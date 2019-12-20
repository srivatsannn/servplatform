import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'service.g.dart';

/// An example service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Tasks implements Built<Tasks, ServiceBuilder> {
  @nullable
  int get id;

  String get multi_img_url;
  String get link;
  String get provider;
  String get service_key;
  String get time;
  String get claps;
  String get user;
  String get isSeen;
  String get publishedAt;

  String get tasks;
  String get percentage_match;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Tasks.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Tasks.serializer, this));
  }

  static Tasks fromJson(String jsonString) {
    return serializers.deserializeWith(
      Tasks.serializer,
      json.decode(jsonString),
    );
  }

  static Tasks fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Tasks.serializer,
      map,
    );
  }

  Tasks._();
  static Serializer<Tasks> get serializer => _$tasksSerializer;
  factory Tasks([void Function(ServiceBuilder) updates]) = _$Tasks;
}
