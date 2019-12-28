import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'story.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Story implements Built<Story, StoryBuilder> {
  @nullable
  int get id;

  String get story_key;
  String get multi_img_url;
  String get provider;
  String get service_key;
  String get time_sec;
  String get claps;
  String get user;
  String get publishedAt;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Story.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Story.serializer, this));
  }

  static Story fromJson(String jsonString) {
    return serializers.deserializeWith(
      Story.serializer,
      json.decode(jsonString),
    );
  }

  static Story fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Story.serializer,
      map,
    );
  }

  Story._();
  static Serializer<Story> get serializer => _$storySerializer;
  factory Story([void Function(StoryBuilder) updates]) = _$Story;
}
