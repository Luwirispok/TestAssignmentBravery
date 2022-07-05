part of 'vending_machines_on_map_bloc.dart';

@freezed
class VendingMachinesOnMapState extends BaseBlocState with _$VendingMachinesOnMapState {
  factory VendingMachinesOnMapState({
    BlocAction? action,
    @Default(false)
        bool isLoading,
    @Default([])
        List<VendingMachineTest> vendingMachines,
    VendingMachineTest? selectedVendingMachine,
    @Default(const CameraPosition(
      target: LatLng(55.759171, 37.619101),
      zoom: 15,
    ))
        CameraPosition cameraPosition,
    @Default(0)
        double bottomSheetOffset,
  }) = _VendingMachinesOnMapState;
}
