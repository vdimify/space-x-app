// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'second_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecondStage _$SecondStageFromJson(Map<String, dynamic> json) => SecondStage(
      thrust: json['thrust'] == null
          ? null
          : ThrustSeaLevel.fromJson(json['thrust'] as Map<String, dynamic>),
      payloads: json['payloads'] == null
          ? null
          : Payloads.fromJson(json['payloads'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: json['engines'] as int?,
      fuel_amount_tons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burn_time_sec: json['burn_time_sec'] as int?,
    );

Map<String, dynamic> _$SecondStageToJson(SecondStage instance) =>
    <String, dynamic>{
      'thrust': instance.thrust,
      'payloads': instance.payloads,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuel_amount_tons,
      'burn_time_sec': instance.burn_time_sec,
    };
