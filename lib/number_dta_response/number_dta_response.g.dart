// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_dta_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberDtaResponse _$NumberDtaResponseFromJson(Map<String, dynamic> json) =>
    NumberDtaResponse(
      text: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberDtaResponseToJson(NumberDtaResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
