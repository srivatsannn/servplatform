import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'service.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Merchants implements Built<Merchants, ServiceBuilder> {
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

  String get merchants;
  String get percentage_match;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Merchants.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Merchants.serializer, this));
  }

  static Merchants fromJson(String jsonString) {
    return serializers.deserializeWith(
      Merchants.serializer,
      json.decode(jsonString),
    );
  }

  static Merchants fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Merchants.serializer,
      map,
    );
  }

  Merchants._();
  static Serializer<Merchants> get serializer => _$merchantsSerializer;
  factory Merchants([void Function(ServiceBuilder) updates]) = _$Merchants;
}
