import 'package:json_annotation/json_annotation.dart';

part 'number_dta_response.g.dart';

@JsonSerializable()
class NumberDtaResponse {
  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  NumberDtaResponse({this.text, this.number, this.found, this.type});

  factory NumberDtaResponse.fromJson(Map<String, dynamic> json) {
    return _$NumberDtaResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberDtaResponseToJson(this);
}
