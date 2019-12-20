import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'service.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Reviews implements Built<Reviews, ServiceBuilder> {
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

  String get reviews;
  String get percentage_match;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Reviews.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Reviews.serializer, this));
  }

  static Reviews fromJson(String jsonString) {
    return serializers.deserializeWith(
      Reviews.serializer,
      json.decode(jsonString),
    );
  }

  static Reviews fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Reviews.serializer,
      map,
    );
  }

  Reviews._();
  static Serializer<Reviews> get serializer => _$reviewsSerializer;
  factory Reviews([void Function(ServiceBuilder) updates]) = _$Reviews;
}
