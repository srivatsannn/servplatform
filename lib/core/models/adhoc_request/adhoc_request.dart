import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'adhoc_request.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Adhoc_request implements Built<Adhoc_request, Adhoc_requestBuilder> {
  @nullable
  int get id;

  String get user_key;
  String get request_title;
  String get request_description;
  String get created_at;
  String get status;
  String get story_key;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Adhoc_request.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Adhoc_request.serializer, this));
  }

  static Adhoc_request fromJson(String jsonString) {
    return serializers.deserializeWith(
      Adhoc_request.serializer,
      json.decode(jsonString),
    );
  }

  static Adhoc_request fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Adhoc_request.serializer,
      map,
    );
  }

  Adhoc_request._();
  static Serializer<Adhoc_request> get serializer => _$adhoc_requestSerializer;
  factory Adhoc_request([void Function(Adhoc_requestBuilder) updates]) = _$Adhoc_request;
}
