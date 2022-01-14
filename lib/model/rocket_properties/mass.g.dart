// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mass _$MassFromJson(Map<String, dynamic> json) => Mass(
      kg: (json['kg'] as num?)?.toDouble(),
      lb: (json['lb'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MassToJson(Mass instance) => <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };
