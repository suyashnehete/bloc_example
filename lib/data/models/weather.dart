import 'dart:convert';

import 'package:flutter/foundation.dart';

class Weather {
  Map<String, dynamic> coord;
  List<Map<String, dynamic>> weather;
  String base;
  Map<String, dynamic> main;
  int visibility;
  Map<String, dynamic> wind;
  Map<String, dynamic> clouds;
  int dt;
  Map<String, dynamic> sys;
  int timezone;
  int id;
  String name;
  int cod;
  Weather({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  Weather copyWith({
    Map<String, dynamic>? coord,
    List<Map<String, dynamic>>? weather,
    String? base,
    Map<String, dynamic>? main,
    int? visibility,
    Map<String, dynamic>? wind,
    Map<String, dynamic>? clouds,
    int? dt,
    Map<String, dynamic>? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) {
    return Weather(
      coord: coord ?? this.coord,
      weather: weather ?? this.weather,
      base: base ?? this.base,
      main: main ?? this.main,
      visibility: visibility ?? this.visibility,
      wind: wind ?? this.wind,
      clouds: clouds ?? this.clouds,
      dt: dt ?? this.dt,
      sys: sys ?? this.sys,
      timezone: timezone ?? this.timezone,
      id: id ?? this.id,
      name: name ?? this.name,
      cod: cod ?? this.cod,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'coord': coord,
      'weather': weather,
      'base': base,
      'main': main,
      'visibility': visibility,
      'wind': wind,
      'clouds': clouds,
      'dt': dt,
      'sys': sys,
      'timezone': timezone,
      'id': id,
      'name': name,
      'cod': cod,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      coord: Map<String, dynamic>.from(map['coord']),
      weather: List<Map<String, dynamic>>.from(map['weather']?.map((x) => x)),
      base: map['base'],
      main: Map<String, dynamic>.from(map['main']),
      visibility: map['visibility'],
      wind: Map<String, dynamic>.from(map['wind']),
      clouds: Map<String, dynamic>.from(map['clouds']),
      dt: map['dt'],
      sys: Map<String, dynamic>.from(map['sys']),
      timezone: map['timezone'],
      id: map['id'],
      name: map['name'],
      cod: map['cod'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) => Weather.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Weather(coord: $coord, weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Weather &&
      mapEquals(other.coord, coord) &&
      listEquals(other.weather, weather) &&
      other.base == base &&
      mapEquals(other.main, main) &&
      other.visibility == visibility &&
      mapEquals(other.wind, wind) &&
      mapEquals(other.clouds, clouds) &&
      other.dt == dt &&
      mapEquals(other.sys, sys) &&
      other.timezone == timezone &&
      other.id == id &&
      other.name == name &&
      other.cod == cod;
  }

  @override
  int get hashCode {
    return coord.hashCode ^
      weather.hashCode ^
      base.hashCode ^
      main.hashCode ^
      visibility.hashCode ^
      wind.hashCode ^
      clouds.hashCode ^
      dt.hashCode ^
      sys.hashCode ^
      timezone.hashCode ^
      id.hashCode ^
      name.hashCode ^
      cod.hashCode;
  }
}
