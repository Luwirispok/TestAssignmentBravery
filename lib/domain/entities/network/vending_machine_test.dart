import 'package:json_annotation/json_annotation.dart';
import 'package:power_bank/domain/entities/network/tariff.dart';

part 'vending_machine_test.g.dart';

@JsonSerializable()
class VendingMachineTest {
  VendingMachineTest({
    required this.id,
    required this.maxProductCount,
    required this.freePlacesCount,
    required this.availableProductCount,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.descriptionPromotion,
  });

  @JsonKey(name: 'vendingMachineId')
  final int id;
  final int maxProductCount;
  final int freePlacesCount;
  final int availableProductCount;
  final String address;
  final double latitude;
  final double longitude;
  final String description;
  final String descriptionPromotion;

  factory VendingMachineTest.fromJson(Map<String, dynamic> json) => _$VendingMachineTestFromJson(json);

  Map<String, dynamic> toJson() => _$VendingMachineTestToJson(this);
}
