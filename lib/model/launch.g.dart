// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) => Launch(
      static_fire_date_utc: json['static_fire_date_utc'] == null
          ? null
          : DateTime.parse(json['static_fire_date_utc'] as String),
      static_fire_date_unix: json['static_fire_date_unix'] as int?,
      tdb: json['tdb'] as bool,
      net: json['net'] as bool,
      window: json['window'] as int,
      rocket: json['rocket'] as String,
      success: json['success'] as bool,
      details: json['details'] as String,
      capsules:
          (json['capsules'] as List<dynamic>).map((e) => e as String).toList(),
      payloads:
          (json['payloads'] as List<dynamic>).map((e) => e as String).toList(),
      launchpad: json['launchpad'] as String,
      auto_update: json['auto_update'] as bool,
      flight_number: json['flight_number'] as int,
      name: json['name'] as String,
      date_utc: json['date_utc'] == null
          ? null
          : DateTime.parse(json['date_utc'] as String),
      date_unix: json['date_unix'] as int,
      date_local: json['date_local'] == null
          ? null
          : DateTime.parse(json['date_local'] as String),
      date_precision: json['date_precision'] as String,
      upcoming: json['upcoming'] as bool,
      id: json['id'] as String,
    );

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'static_fire_date_utc': instance.static_fire_date_utc?.toIso8601String(),
      'static_fire_date_unix': instance.static_fire_date_unix,
      'tdb': instance.tdb,
      'net': instance.net,
      'window': instance.window,
      'rocket': instance.rocket,
      'success': instance.success,
      'details': instance.details,
      'capsules': instance.capsules,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'auto_update': instance.auto_update,
      'flight_number': instance.flight_number,
      'name': instance.name,
      'date_utc': instance.date_utc?.toIso8601String(),
      'date_unix': instance.date_unix,
      'date_local': instance.date_local?.toIso8601String(),
      'date_precision': instance.date_precision,
      'upcoming': instance.upcoming,
      'id': instance.id,
    };
