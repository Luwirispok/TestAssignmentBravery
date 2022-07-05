part of 'vending_machines_on_map_bloc.dart';

@freezed
class VendingMachinesOnMapEvent  with _$VendingMachinesOnMapEvent {
  factory VendingMachinesOnMapEvent.init() = Init;
  factory VendingMachinesOnMapEvent.onMapCreated(GoogleMapController controller) = OnMapCreated;
  factory VendingMachinesOnMapEvent.onCameraMove(CameraPosition position) = OnCameraMove;
  factory VendingMachinesOnMapEvent.onMapTap() = OnMapTap;
  factory VendingMachinesOnMapEvent.vendingMachineOnMapClicked(VendingMachineTest machine) = VendingMachineOnMapClicked;
  factory VendingMachinesOnMapEvent.vendingMachineSelectClicked(VendingMachineTest machine) = VendingMachineSelectClicked;
  factory VendingMachinesOnMapEvent.myLocationClicked() = MyLocationClicked;
  factory VendingMachinesOnMapEvent.bottomSheetOffsetChanged(double offset) = BottomSheetOffsetChanged;
  factory VendingMachinesOnMapEvent.scanQrCodeClicked() = ScanQrCodeClicked;

}

