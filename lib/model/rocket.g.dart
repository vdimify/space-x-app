// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) => Rocket(
      height: Height.fromJson(json['height'] as Map<String, dynamic>),
      diameter: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: Mass.fromJson(json['mass'] as Map<String, dynamic>),
      first_stage:
          FirstStage.fromJson(json['first_stage'] as Map<String, dynamic>),
      second_stage:
          SecondStage.fromJson(json['second_stage'] as Map<String, dynamic>),
      engines: Engines.fromJson(json['engines'] as Map<String, dynamic>),
      landing_legs:
          LandingLegs.fromJson(json['landing_legs'] as Map<String, dynamic>),
      payload_weights: (json['payload_weights'] as List<dynamic>)
          .map((e) => PayloadWeights.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickr_images: (json['flickr_images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      type: json['type'] as String,
      active: json['active'] as bool,
      stages: json['stages'] as int,
      boosters: json['boosters'] as int,
      cost_per_launch: json['cost_per_launch'] as int,
      success_rate_pct: json['success_rate_pct'] as int,
      first_flight: json['first_flight'] == null
          ? null
          : DateTime.parse(json['first_flight'] as String),
      country: json['country'] as String,
      company: json['company'] as String,
      wikipedia: json['wikipedia'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'first_stage': instance.first_stage,
      'second_stage': instance.second_stage,
      'engines': instance.engines,
      'landing_legs': instance.landing_legs,
      'payload_weights': instance.payload_weights,
      'flickr_images': instance.flickr_images,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'cost_per_launch': instance.cost_per_launch,
      'success_rate_pct': instance.success_rate_pct,
      'first_flight': instance.first_flight?.toIso8601String(),
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };
