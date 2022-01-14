// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Engines _$EnginesFromJson(Map<String, dynamic> json) => Engines(
      isp: json['isp'] == null
          ? null
          : Isp.fromJson(json['isp'] as Map<String, dynamic>),
      thrust_sea_level: json['thrust_sea_level'] == null
          ? null
          : ThrustSeaLevel.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrust_vacuum: json['thrust_vacuum'] == null
          ? null
          : ThrustSeaLevel.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      number: json['number'] as int?,
      type: json['type'] as String?,
      version: json['version'] as String?,
      layout: json['layout'] as String?,
      engine_loss_max: json['engine_loss_max'] as int?,
      propellant_1: json['propellant_1'] as String?,
      propellant_2: json['propellant_2'] as String?,
      thrust_to_weight: (json['thrust_to_weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$EnginesToJson(Engines instance) => <String, dynamic>{
      'isp': instance.isp,
      'thrust_sea_level': instance.thrust_sea_level,
      'thrust_vacuum': instance.thrust_vacuum,
      'number': instance.number,
      'type': instance.type,
      'version': instance.version,
      'layout': instance.layout,
      'engine_loss_max': instance.engine_loss_max,
      'propellant_1': instance.propellant_1,
      'propellant_2': instance.propellant_2,
      'thrust_to_weight': instance.thrust_to_weight,
    };
