import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'task.g.dart';

/// An example service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Task implements Built<Task, ServiceBuilder> {
  @nullable
  int get id;

  String get mission_id;
  String get service_key;
  String get descption;
  String get order_id;
  String get status;
  String get predicted_satisfaction;
  String get wait_time;
  String get earning_id;
  String get has_pickup;
  String get layout_type;
  String get has_delivery;
  String get tracking_link;
  String get custom_field_template;
  String get pickup_meta_data;
  String get delivery_notes;
  String get order_notes;
  String get team_id;
  String get manager_id;
  String get auto_assignment;
  String get fleet_id;
  String get rules_based;
  String get broadcast;
  String get geofencing;
  String get task_windows;
  String get task_dependencies;
  String get priority;
  String get agents;
  String get p_ref_images;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Task.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Task.serializer, this));
  }

  static Task fromJson(String jsonString) {
    return serializers.deserializeWith(
      Task.serializer,
      json.decode(jsonString),
    );
  }

  static Task fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Task.serializer,
      map,
    );
  }

  Task._();
  static Serializer<Task> get serializer => _$taskSerializer;
  factory Task([void Function(ServiceBuilder) updates]) = _$Task;
}
