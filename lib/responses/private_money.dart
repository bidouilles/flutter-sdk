import 'package:json_annotation/json_annotation.dart';

import '../responses.dart';

part 'private_money.g.dart';

@JsonSerializable()
class PrivateMoney extends Response {
  final String id;
  final String name;
  final String type;
  final String unit;
  final String description;
  final String onelineMessage;
  final String? accountImage;
  final Images images;
  final Organization organization;
  final double maxBalance;
  final double transferLimit;
  final String expirationType;
  final bool isExclusive;
  final String? termsUrl;
  final String? privacyPolicyUrl;
  final String? paymentActUrl;
  final String? commercialActUrl;
  final bool canUseCreditCard;

  PrivateMoney({
    required this.id,
    required this.name,
    required this.type,
    required this.unit,
    required this.description,
    required this.onelineMessage,
    this.accountImage,
    required this.images,
    required this.organization,
    required this.maxBalance,
    required this.transferLimit,
    required this.expirationType,
    required this.isExclusive,
    this.termsUrl,
    this.privacyPolicyUrl,
    this.paymentActUrl,
    this.commercialActUrl,
    required this.canUseCreditCard,
  });

  factory PrivateMoney.fromJson(Map<String, dynamic> json) =>
      _$PrivateMoneyFromJson(json);
  Map<String, dynamic> toJson() => _$PrivateMoneyToJson(this);
}
