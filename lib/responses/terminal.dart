import 'package:json_annotation/json_annotation.dart';

import '../responses.dart';

part 'terminal.g.dart';

@JsonSerializable()
class Terminal extends Response {
  final String id;
  final String name;
  final String hardwareId;
  final String? pushService;
  final String? pushToken;
  final User user;
  final Account account;

  Terminal({
    required this.id,
    required this.name,
    required this.hardwareId,
    this.pushService,
    this.pushToken,
    required this.user,
    required this.account,
  });

  factory Terminal.fromJson(Map<String, dynamic> json) =>
      _$TerminalFromJson(json);
  Map<String, dynamic> toJson() => _$TerminalToJson(this);
}
