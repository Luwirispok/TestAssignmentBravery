import 'package:json_annotation/json_annotation.dart';

part 'tariff.g.dart';

@JsonSerializable()
class Tariff {
  Tariff({
    required this.tariffId,
    required this.name,
    required this.description,
    required this.status,
    required this.validityPeriod,
    required this.price,
     this.userId,
  });

  int tariffId;
  String name;
  String description;
  int status;
  String validityPeriod;
  String price;
  int? userId;

  factory Tariff.fromJson(Map<String, dynamic> json) => _$TariffFromJson(json);

  Map<String, dynamic> toJson() => _$TariffToJson(this);
}


