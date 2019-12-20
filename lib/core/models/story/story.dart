import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'story.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Story implements Built<Story, ServiceBuilder> {
  @nullable
  int get id;

  String get multi_img_url;
  String get link;
  String get link;
  String get link;

 

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Story.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Story.serializer, this));
  }

  static Service fromJson(String jsonString) {
    return serializers.deserializeWith(
      Service.serializer,
      json.decode(jsonString),
    );
  }

  static Service fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Service.serializer,
      map,
    );
  }

  Service._();
  static Serializer<Service> get serializer => _$serviceSerializer;
  factory Service([void Function(ServiceBuilder) updates]) = _$Service;
}
