// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vending_machine_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendingMachineTest _$VendingMachineTestFromJson(Map<String, dynamic> json) =>
    VendingMachineTest(
      id: json['vendingMachineId'] as int,
      maxProductCount: json['maxProductCount'] as int,
      freePlacesCount: json['freePlacesCount'] as int,
      availableProductCount: json['availableProductCount'] as int,
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      description: json['description'] as String,
      descriptionPromotion: json['descriptionPromotion'] as String,
    );

Map<String, dynamic> _$VendingMachineTestToJson(VendingMachineTest instance) =>
    <String, dynamic>{
      'vendingMachineId': instance.id,
      'maxProductCount': instance.maxProductCount,
      'freePlacesCount': instance.freePlacesCount,
      'availableProductCount': instance.availableProductCount,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'descriptionPromotion': instance.descriptionPromotion,
    };
