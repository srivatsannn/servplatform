import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;

part 'team.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Team implements Built<Team, TeamBuilder> {
  @nullable
  int get id;

  @nullable
  String get team_name;
  @nullable
  BuiltList<String> get agents;
  @nullable
  String get battery_usage;
  @nullable
  String get tags;
  @nullable
  String get capacity;
  @nullable
  String get type;
  @nullable
  String get speed;




  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Team.serializer, this)));
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
  factory Team([void Function(TeamBuilder) updates]) = _$Team;
}
