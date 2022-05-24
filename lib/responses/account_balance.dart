import 'package:json_annotation/json_annotation.dart';

import '../responses.dart';

part 'account_balance.g.dart';

@JsonSerializable()
class AccountBalance extends Response {
  final DateTime expiresAt;
  final double moneyAmount;
  final double pointAmount;

  AccountBalance({
    required this.expiresAt,
    required this.moneyAmount,
    required this.pointAmount,
  });

  factory AccountBalance.fromJson(Map<String, dynamic> json) =>
      _$AccountBalanceFromJson(json);
  Map<String, dynamic> toJson() => _$AccountBalanceToJson(this);
}
