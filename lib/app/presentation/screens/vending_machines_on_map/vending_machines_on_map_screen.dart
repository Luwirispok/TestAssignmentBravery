import 'dart:typed_data';
import 'dart:ui';

import 'package:power_bank/app/presentation/modals/vending_machine_info_modal.dart';
import 'package:power_bank/app/resources/map_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:power_bank/app/navigation/navigate_action.dart';
import 'package:power_bank/app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:power_bank/app/presentation/screens/vending_machines_on_map/bloc/vending_machines_on_map_bloc.dart';
import 'package:power_bank/app/resources/app_styles.dart';
import 'package:power_bank/app/widgets/buttons/base_button.dart';
import 'package:power_bank/core/bloc/bloc_action.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_listener.dart';
import 'package:power_bank/core/ui/widgets/base_bloc_state_widget.dart';
import 'package:power_bank/core/ui/widgets/dialogs.dart';
import 'package:power_bank/domain/entities/network/vending_machine.dart';
import 'package:power_bank/domain/entities/network/vending_machine_test.dart';
import 'package:power_bank/gen/assets.gen.dart';

class VendingMachinesOnMapScreen extends StatefulWidget {
  @override
  State<VendingMachinesOnMapScreen> createState() => _VendingMachinesOnMapScreenState();
}

class _VendingMachinesOnMapScreenState
    extends BaseBlocStateWidget<VendingMachinesOnMapScreen, VendingMachinesOnMapBloc, VendingMachinesOnMapEvent> {
  GoogleMapController? _mapController;
  static const Duration _animationDuration = const Duration(milliseconds: 1350);

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BaseBlocListener<VendingMachinesOnMapBloc, VendingMachinesOnMapState>(
        listener: (context, state, action) async {
          if (action is NavigateAction) {
            _mapController?.dispose();
          }
          if (action is ShowAlertMessage) {
            showAlertMessage(context, action: action);
          }
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: _buildMap(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buildScanQrCodeButton(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _buildSelectedVendingMachineInfo(),
            ),
          ],
        ),
      );

  Widget _buildMap() => BlocBuilder<VendingMachinesOnMapBloc, VendingMachinesOnMapState>(
        buildWhen: (previous, current) => previous.vendingMachines != current.vendingMachines,
        builder: (context, state) => FutureBuilder<Set<Marker>>(
          future: _generateMarkers(state.vendingMachines),
          builder: (BuildContext context, AsyncSnapshot<Set<Marker>> snapshot) => GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
              _mapController!.setMapStyle(mapStyle);
            },
            onCameraMove: (CameraPosition position) {
              sendEvent(VendingMachinesOnMapEvent.onCameraMove(position));
            },
            onTap: (position) {
              sendEvent(VendingMachinesOnMapEvent.onMapTap());
            },
            markers: snapshot.data ?? {},
            mapType: MapType.normal,
            compassEnabled: true,
            mapToolbarEnabled: false,
            myLocationEnabled: false,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            minMaxZoomPreference: MinMaxZoomPreference(3, 18),
            initialCameraPosition: state.cameraPosition,
          ),
        ),
      );

  Future<Set<Marker>> _generateMarkers(List<VendingMachineTest> vendingMachines) async {
    List<Marker> markers = <Marker>[];
    BitmapDescriptor icon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(
        size: Size(28, 28),
        devicePixelRatio: mediaQuery.devicePixelRatio,
      ),
      Assets.images.marker.assetName,
    );

    for (final vendingMachine in vendingMachines) {
      markers.add(
        Marker(
          markerId: MarkerId(vendingMachine.id.toString()),
          position: LatLng(vendingMachine.latitude, vendingMachine.longitude),
          icon: icon,
          onTap: () {
            sendEvent(VendingMachinesOnMapEvent.vendingMachineOnMapClicked(vendingMachine));
          },
        ),
      );
    }

    return markers.toSet();
  }

  Widget _buildScanQrCodeButton() => BlocBuilder<VendingMachinesOnMapBloc, VendingMachinesOnMapState>(
        builder: (context, state) => Padding(
          padding: EdgeInsets.all(16),
          child: BaseButton(
            text: localization.scan,
            onPressed: () {
              sendEvent(VendingMachinesOnMapEvent.scanQrCodeClicked());
            },
          ),
        ),
      );

  Widget _buildSelectedVendingMachineInfo() => BlocBuilder<VendingMachinesOnMapBloc, VendingMachinesOnMapState>(
        buildWhen: (previous, current) => previous.selectedVendingMachine != current.selectedVendingMachine,
        builder: (context, state) {
          print('Modal ${state.selectedVendingMachine?.id}');
          return state.selectedVendingMachine != null
                ? VendingMachineInfoModal(
                    vendingMachine: state.selectedVendingMachine!,
                    rentPressed: () {
                      sendEvent(VendingMachinesOnMapEvent.vendingMachineSelectClicked(state.selectedVendingMachine!));
                    },
                    exitPressed: () {
                      sendEvent(VendingMachinesOnMapEvent.onMapTap());
                    },
                  )
                : const SizedBox();

          // return AnimatedSwitcher(
          //   switchInCurve: Curves.easeInOut,
          //   duration: _animationDuration,
          //   transitionBuilder: (Widget child, Animation<double> animation) {
          //     return ScaleTransition(scale: animation, child: child);
          //   },
          //   child:
          //   state.selectedVendingMachine != null
          //       ? VendingMachineInfoModal(
          //           vendingMachine: state.selectedVendingMachine!,
          //           rentPressed: () {
          //             sendEvent(VendingMachinesOnMapEvent.vendingMachineSelectClicked(state.selectedVendingMachine!));
          //           },
          //           exitPressed: () {
          //             sendEvent(VendingMachinesOnMapEvent.onMapTap());
          //           },
          //         )
          //       : const SizedBox(),
          // );
        },
      );
}
