import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;

part 'agent.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Agent implements Built<Agent, AgentBuilder> {
  @nullable
  int get id;
  @nullable
  String get agent_key;
  @nullable
  String get user_key;
  @nullable
  String get username;
  @nullable
  String get password;
  @nullable
  String get phone;
  @nullable
  String get email;
  @nullable
  String get first_name;
  @nullable
  String get last_name;
  @nullable
  String get current_location;
  @nullable
  String get geofence;
  @nullable
  String get status;
  @nullable
  String get is_verified;
  @nullable
  BuiltList<String> get team_key;
  @nullable
  BuiltList<String> get tags;
  @nullable
  String get fleet_id;
  @nullable
  String get transport_type;
  @nullable
  String get transport_desc;
  @nullable
  String get license;
  @nullable
  String get color;
  @nullable
  String get url;
  @nullable
  String get min_visits;
  @nullable
  String get capacity;
  @nullable
  String get payment;
  @nullable
  String get recommended_merchants_to_join;
  @nullable
  String get recommended_promotions;
  @nullable
  String get user_id;
  @nullable
  String get own_a_vehicle;
  @nullable
  String get own_a_space;
  @nullable
  String get team_id;
  @nullable
  String get rule_id;
  @nullable
  String get date;
  @nullable
  String get limit;
  @nullable
  String get block_status;
  @nullable
  String get message;
  @nullable
  BuiltList<String> get skills;
  @nullable
  String get availability;
  @nullable
  String get earnings;
  @nullable
  String get providers;
  @nullable
  String get pending_proifle_steps;

  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Agent.serializer, this)));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Agent.serializer, this));
  }

  static Agent fromJson(String jsonString) {
    return serializers.deserializeWith(
      Agent.serializer,
      json.decode(jsonString),
    );
  }

  static Agent fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Agent.serializer,
      map,
    );
  }

  Agent._();
  static Serializer<Agent> get serializer => _$agentSerializer;
  factory Agent([void Function(AgentBuilder) updates]) = _$Agent;
}
