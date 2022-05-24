import 'package:json_annotation/json_annotation.dart';

import '../custom_datetime_converter.dart';
import '../responses.dart';

part 'account.g.dart';

@JsonSerializable()
@CustomDateTimeConverter()
class Account extends Response {
  final String id;
  final String name;
  final double balance;
  final double moneyBalance;
  final double pointBalance;
  final bool isSuspended;
  final PrivateMoney privateMoney;
  final DateTime? nearestExpiresAt;

  Account({
    required this.id,
    required this.name,
    required this.balance,
    required this.moneyBalance,
    required this.pointBalance,
    required this.isSuspended,
    required this.privateMoney,
    this.nearestExpiresAt,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
