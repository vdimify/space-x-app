// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thrust_sea_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThrustSeaLevel _$ThrustSeaLevelFromJson(Map<String, dynamic> json) =>
    ThrustSeaLevel(
      kN: (json['kN'] as num?)?.toDouble(),
      lbf: (json['lbf'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ThrustSeaLevelToJson(ThrustSeaLevel instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };
