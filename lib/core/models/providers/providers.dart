import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'service.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Providers implements Built<Providers, ServiceBuilder> {
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
  
  String get providers;
  String get percentage_match;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Providers.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Providers.serializer, this));
  }

  static Providers fromJson(String jsonString) {
    return serializers.deserializeWith(
      Providers.serializer,
      json.decode(jsonString),
    );
  }

  static Providers fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Providers.serializer,
      map,
    );
  }

  Providers._();
  static Serializer<Providers> get serializer => _$providersSerializer;
  factory Providers([void Function(ServiceBuilder) updates]) = _$Providers;
}
