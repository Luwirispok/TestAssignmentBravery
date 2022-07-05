// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tariff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tariff _$TariffFromJson(Map<String, dynamic> json) => Tariff(
      tariffId: json['tariffId'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      status: json['status'] as int,
      validityPeriod: json['validityPeriod'] as String,
      price: json['price'] as String,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$TariffToJson(Tariff instance) => <String, dynamic>{
      'tariffId': instance.tariffId,
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
      'validityPeriod': instance.validityPeriod,
      'price': instance.price,
      'userId': instance.userId,
    };
