// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payloads _$PayloadsFromJson(Map<String, dynamic> json) => Payloads(
      composite_fairing: json['composite_fairing'] == null
          ? null
          : CompositeFairing.fromJson(
              json['composite_fairing'] as Map<String, dynamic>),
      option1: json['option1'] as String?,
    );

Map<String, dynamic> _$PayloadsToJson(Payloads instance) => <String, dynamic>{
      'composite_fairing': instance.composite_fairing,
      'option1': instance.option1,
    };
