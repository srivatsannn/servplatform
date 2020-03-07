import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;

part 'task.g.dart';

/// An example service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Task implements Built<Task, TaskBuilder> {
  @nullable
  int get id;
    @nullable
 String get mission_id;
  @nullable
  String get service_key;
  @nullable
  String get descption;
  @nullable
  String get order_id;
  @nullable
  String get status;
  @nullable
  String get predicted_satisfaction;
  @nullable
  String get wait_time;
  @nullable
  String get earning_id;
  @nullable
  String get has_pickup;
  @nullable
  String get layout_type;
  @nullable
  String get has_delivery;
  @nullable
  String get tracking_link;
  @nullable
  String get custom_field_template;
  @nullable
  String get pickup_meta_data;
  @nullable
  String get delivery_notes;
  @nullable
  String get order_notes;
  @nullable
  String get team_id;
  @nullable
  String get manager_id;
  @nullable
  String get auto_assignment;
  @nullable
  String get fleet_id;
  @nullable
  String get rules_based;
  @nullable
  String get broadcast;
  @nullable
  String get geofencing;
  @nullable
  String get task_windows;
  @nullable
  String get task_dependencies;
  @nullable
  String get priority;
  @nullable
  String get agents;
  @nullable
  BuiltList<String> get p_ref_images;
  @nullable
  String get customer_email;
  @nullable
  String get timezone;
  @nullable
  String get tags;
  @nullable
  String get customer_username;
  @nullable
  String get customer_phone;
  @nullable
  String get customer_address;
  @nullable
  String get longitude;
  @nullable
  String get latitude;
  @nullable
  String get job_pickup_datetime;
  @nullable
  String get job_delivery_datetime;
  @nullable
  String get job_id;


   String toJson() {
    return json.encode(serializers.serializeWith(Task.serializer, this));
  }
  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Task.serializer, this)));
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
  factory Task([void Function(TaskBuilder) updates]) = _$Task;
}
