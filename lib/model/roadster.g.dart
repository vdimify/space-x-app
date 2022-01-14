// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roadster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Roadster _$RoadsterFromJson(Map<String, dynamic> json) => Roadster(
      id: json['id'] as String,
      name: json['name'] as String,
      launch_date_utc: DateTime.parse(json['launch_date_utc'] as String),
      launch_date_unix: json['launch_date_unix'] as int,
      launch_mass_kg: json['launch_mass_kg'] as int,
      launch_mass_lbs: json['launch_mass_lbs'] as int,
      norad_id: json['norad_id'] as int,
      epoch_jd: (json['epoch_jd'] as num).toDouble(),
      orbit_type: json['orbit_type'] as String,
      apoapsis_au: (json['apoapsis_au'] as num).toDouble(),
      periapsis_au: (json['periapsis_au'] as num).toDouble(),
      semi_major_axis_au: (json['semi_major_axis_au'] as num).toDouble(),
      eccentricity: (json['eccentricity'] as num).toDouble(),
      inclination: (json['inclination'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      periapsis_arg: (json['periapsis_arg'] as num).toDouble(),
      period_days: (json['period_days'] as num).toDouble(),
      speed_kph: (json['speed_kph'] as num).toDouble(),
      speed_mph: (json['speed_mph'] as num).toDouble(),
      earth_distance_km: (json['earth_distance_km'] as num).toDouble(),
      earth_distance_mi: (json['earth_distance_mi'] as num).toDouble(),
      mars_distance_km: (json['mars_distance_km'] as num).toDouble(),
      wikipedia: json['wikipedia'] as String,
      video: json['video'] as String,
      details: json['details'] as String,
      flickrImages: (json['flickrImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RoadsterToJson(Roadster instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'launch_date_utc': instance.launch_date_utc.toIso8601String(),
      'launch_date_unix': instance.launch_date_unix,
      'launch_mass_kg': instance.launch_mass_kg,
      'launch_mass_lbs': instance.launch_mass_lbs,
      'norad_id': instance.norad_id,
      'epoch_jd': instance.epoch_jd,
      'orbit_type': instance.orbit_type,
      'apoapsis_au': instance.apoapsis_au,
      'periapsis_au': instance.periapsis_au,
      'semi_major_axis_au': instance.semi_major_axis_au,
      'eccentricity': instance.eccentricity,
      'inclination': instance.inclination,
      'longitude': instance.longitude,
      'periapsis_arg': instance.periapsis_arg,
      'period_days': instance.period_days,
      'speed_kph': instance.speed_kph,
      'speed_mph': instance.speed_mph,
      'earth_distance_km': instance.earth_distance_km,
      'earth_distance_mi': instance.earth_distance_mi,
      'mars_distance_km': instance.mars_distance_km,
      'wikipedia': instance.wikipedia,
      'video': instance.video,
      'details': instance.details,
      'flickrImages': instance.flickrImages,
    };
