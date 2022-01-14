// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ship _$ShipFromJson(Map<String, dynamic> json) => Ship(
      id: json['id'] as String,
      name: json['name'] as String,
      active: json['active'] as bool,
      launches:
          (json['launches'] as List<dynamic>).map((e) => e as String).toList(),
      legacy_id: json['legacy_id'] as String?,
      model: json['model'] as String?,
      type: json['type'] as String?,
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
      imo: json['imo'] as int?,
      mmsi: json['mmsi'] as int?,
      abs: json['abs'] as int?,
      shipClass: json['shipClass'] as int?,
      mass_kg: json['mass_kg'] as int?,
      mass_lbs: json['mass_lbs'] as int?,
      year_built: json['year_built'] as int?,
      home_port: json['home_port'] as String?,
      status: json['status'] as String?,
      speed_kn: (json['speed_kn'] as num?)?.toDouble(),
      course_deg: (json['course_deg'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      last_ais_update: json['last_ais_update'] as String?,
      link: json['link'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$ShipToJson(Ship instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'launches': instance.launches,
      'legacy_id': instance.legacy_id,
      'model': instance.model,
      'type': instance.type,
      'roles': instance.roles,
      'imo': instance.imo,
      'mmsi': instance.mmsi,
      'abs': instance.abs,
      'shipClass': instance.shipClass,
      'mass_kg': instance.mass_kg,
      'mass_lbs': instance.mass_lbs,
      'year_built': instance.year_built,
      'home_port': instance.home_port,
      'status': instance.status,
      'speed_kn': instance.speed_kn,
      'course_deg': instance.course_deg,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'last_ais_update': instance.last_ais_update,
      'link': instance.link,
      'image': instance.image,
    };
