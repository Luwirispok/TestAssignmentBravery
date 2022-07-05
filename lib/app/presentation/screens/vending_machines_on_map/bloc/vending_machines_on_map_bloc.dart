import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';
import 'package:power_bank/app/navigation/navigate_action.dart';
import 'package:power_bank/app/navigation/navigation_type.dart';
import 'package:power_bank/core/bloc/base_bloc_state.dart';
import 'package:power_bank/core/bloc/bloc_action.dart';
import 'package:power_bank/core/enums/MessageType.dart';
import 'package:power_bank/core/failures.dart';
import 'package:power_bank/core/utils/base_error_handler.dart';
import 'package:power_bank/data/repositories/product_rent_repository.dart';
import 'package:power_bank/data/repositories/vending_machines_repository.dart';
import 'package:power_bank/domain/entities/network/product_rent.dart';
import 'package:power_bank/domain/entities/network/vending_machine_test.dart';
import 'package:power_bank/domain/enums/product_rent_status.dart';
import 'package:power_bank/domain/enums/qr_code_scan_type.dart';
import 'package:power_bank/localization/app_localizations.dart';

part 'vending_machines_on_map_bloc.freezed.dart';

part 'vending_machines_on_map_event.dart';

part 'vending_machines_on_map_state.dart';

class VendingMachinesOnMapBloc extends Bloc<VendingMachinesOnMapEvent, VendingMachinesOnMapState> {
  VendingMachinesOnMapBloc({
    required this.vendingMachinesRepository,
    required this.productRentRepository,
    required this.localization,
    ProductRent? product,
  }) : super(VendingMachinesOnMapState()) {
    on<Init>(_init);
    on<OnMapCreated>(_onMapCreated);
    on<OnCameraMove>(_onCameraMove);
    on<OnMapTap>(_onMapTap);
    on<VendingMachineOnMapClicked>(_vendingMachineOnMapClicked);
    on<VendingMachineSelectClicked>(_vendingMachineSelectClicked);
    on<MyLocationClicked>(_myLocationClicked);
    on<BottomSheetOffsetChanged>(_bottomSheetOffsetChanged);
    on<ScanQrCodeClicked>(_scanQrCodeClicked);
    this.add(VendingMachinesOnMapEvent.init());
  }

  VendingMachinesRepository vendingMachinesRepository;
  ProductRentRepository productRentRepository;
  AppLocalizations localization;
  GoogleMapController? _mapController;

  FutureOr<void> _init(Init event, Emitter<VendingMachinesOnMapState> emit) async {
    _fetchVendingMachines(emit);
  }

  Future<void> _fetchVendingMachines(Emitter<VendingMachinesOnMapState> emit) async {
    List<VendingMachineTest> data = [
      VendingMachineTest(
        id: 1,
        maxProductCount: 20,
        freePlacesCount: 15,
        availableProductCount: 2,
        address: 'ул. Большая Дмитровка, 1',
        latitude: 55.758916,
        longitude: 37.615869,
        description: 'Физика прокрутки для сред, которые предотвращают выход',
        descriptionPromotion:
            'Физика прокрутки для сред, которые предотвращают выход смещения прокрутки за пределы содержимого.',
      ),
      VendingMachineTest(
        id: 2,
        maxProductCount: 13,
        freePlacesCount: 8,
        availableProductCount: 4,
        address: 'ул. Охотный Ряд',
        latitude: 55.758065,
        longitude: 37.615053,
        description: 'ScrollView , который создает настраиваемые эффекты',
        descriptionPromotion:
            'CustomScrollView позволяет напрямую использовать осколки для создания различных эффектов прокрутки',
      ),
      VendingMachineTest(
        id: 3,
        maxProductCount: 17,
        freePlacesCount: 7,
        availableProductCount: 2,
        address: 'ул. Большая Дмитровка, 7к5',
        latitude: 55.760800,
        longitude: 37.614844,
        description: 'Контейнер для прокручиваемого элемента',
        descriptionPromotion:
        'Как представление прокрутки должно реагировать на пользовательский ввод.',
      ),
    ];

    emit(state.copyWith(vendingMachines: data));
  }

  FutureOr<void> _onMapCreated(OnMapCreated event, Emitter<VendingMachinesOnMapState> emit) {
    _mapController = event.controller;
  }

  FutureOr<void> _onCameraMove(OnCameraMove event, Emitter<VendingMachinesOnMapState> emit) {
    emit(state.copyWith(cameraPosition: event.position));
  }

  FutureOr<void> _onMapTap(OnMapTap event, Emitter<VendingMachinesOnMapState> emit) {
    emit(state.copyWith(selectedVendingMachine: null));
  }

  FutureOr<void> _vendingMachineOnMapClicked(
      VendingMachineOnMapClicked event, Emitter<VendingMachinesOnMapState> emit) {
    _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(event.machine.latitude, event.machine.longitude),
          zoom: state.cameraPosition.zoom,
        ),
      ),
    );

    if (event.machine != state.selectedVendingMachine) {
      emit(state.copyWith(selectedVendingMachine: event.machine));
    }
  }

  FutureOr<void> _vendingMachineSelectClicked(
      VendingMachineSelectClicked event, Emitter<VendingMachinesOnMapState> emit) {
    emit(state.copyWith(action: null));
  }

  FutureOr<void> _myLocationClicked(MyLocationClicked event, Emitter<VendingMachinesOnMapState> emit) {}

  FutureOr<void> _bottomSheetOffsetChanged(BottomSheetOffsetChanged event, Emitter<VendingMachinesOnMapState> emit) {
    emit(state.copyWith(bottomSheetOffset: event.offset));
    print('offset = ${event.offset}');
    if (event.offset <= 1) {
      emit(state.copyWith(selectedVendingMachine: null));
    }
  }

  FutureOr<void> _scanQrCodeClicked(event, Emitter<VendingMachinesOnMapState> emit) {
    emit(state.copyWith(action: null));
  }
}
