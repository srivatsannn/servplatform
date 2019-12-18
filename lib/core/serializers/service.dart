import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/serializers/serializers.dart';

part 'service.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Service implements Built<Service, ServiceBuilder> {
  static Serializer<Service> get serializer => _$serviceSerializer;

  @nullable
  int get id;

  String get service;
  String get percentage_match;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Service.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Service.serializer, this));
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
  factory Service([void Function(ServiceBuilder) updates]) = _$Service;
}
