import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'agent.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Agent implements Built<Agent, AgentBuilder> {
  @nullable
  int get id;

  String get agent_key;
  String get user_key;
  String get name;
  String get current_location;
  String get geofence;
  String get status;
  String get is_verified;
  String get team_key;
  String get tags;
  String get fleet_id;
  String get transport_type;
  String get transport_desc;
  String get license;
  String get color;
  String get url;
  String get min_visits;
  String get capacity;
  String get payment;
  String get recommended_merchants_to_join;
  String get recommended_promotions;
  String get user_id;
  String get own_a_vehicle;
  String get own_a_space;
  String get team_id;
  String get rule_id;
  String get block_status;
  String get message;
  String get skills;
  String get availability; 
  String get earnings;
  String get providers;
  String get pending_proifle_steps;


  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Agent.serializer, this));
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
