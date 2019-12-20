import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'service.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Charts implements Built<Charts, ServiceBuilder> {
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

  String get charts;
  String get percentage_match;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Charts.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Charts.serializer, this));
  }

  static Charts fromJson(String jsonString) {
    return serializers.deserializeWith(
      Charts.serializer,
      json.decode(jsonString),
    );
  }

  static Charts fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Charts.serializer,
      map,
    );
  }

  Charts._();
  static Serializer<Charts> get serializer => _$chartsSerializer;
  factory Charts([void Function(ServiceBuilder) updates]) = _$Charts;
}
