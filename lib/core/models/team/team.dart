import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'team.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Team implements Built<Team, ServiceBuilder> {
  @nullable
  int get id;

  String get team_name;
  String get agents;
  String get battery_usage;
  String get tags;
  String get capacity;
  String get type;
  String get speed;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Team.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Team.serializer, this));
  }

  static Team fromJson(String jsonString) {
    return serializers.deserializeWith(
      Team.serializer,
      json.decode(jsonString),
    );
  }

  static Team fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Team.serializer,
      map,
    );
  }

  Team._();
  static Serializer<Team> get serializer => _$teamSerializer;
  factory Team([void Function(ServiceBuilder) updates]) = _$Team;
}
