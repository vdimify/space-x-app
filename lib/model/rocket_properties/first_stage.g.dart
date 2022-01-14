// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) => FirstStage(
      thrust_sea_level: json['thrust_sea_level'] == null
          ? null
          : ThrustSeaLevel.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrust_vacuum: json['thrust_vacuum'] == null
          ? null
          : ThrustSeaLevel.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: json['engines'] as int?,
      fuel_amount_tons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burn_time_sec: json['burn_time_sec'] as int?,
    );

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) =>
    <String, dynamic>{
      'thrust_sea_level': instance.thrust_sea_level,
      'thrust_vacuum': instance.thrust_vacuum,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuel_amount_tons,
      'burn_time_sec': instance.burn_time_sec,
    };
