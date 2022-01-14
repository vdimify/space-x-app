// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload_weight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadWeights _$PayloadWeightsFromJson(Map<String, dynamic> json) =>
    PayloadWeights(
      id: json['id'] as String?,
      name: json['name'] as String?,
      kg: (json['kg'] as num?)?.toDouble(),
      lb: (json['lb'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PayloadWeightsToJson(PayloadWeights instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };
