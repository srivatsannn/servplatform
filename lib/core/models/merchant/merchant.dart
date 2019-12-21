import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'merchant.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Merchant implements Built<Merchant, ServiceBuilder> {
  @nullable
  int get id;

  String get merchant_key;
  String get user_key;
  String get provider_key;
  String get earnings;
  String get is_verified;
  String get company_address;
  String get display_address;
  String get business_category_id;
  String get is_active;

  String get merchant;
  String get percentage_match;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Merchant.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Merchant.serializer, this));
  }

  static Merchant fromJson(String jsonString) {
    return serializers.deserializeWith(
      Merchant.serializer,
      json.decode(jsonString),
    );
  }

  static Merchant fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Merchant.serializer,
      map,
    );
  }

  Merchant._();
  static Serializer<Merchant> get serializer => _$merchantSerializer;
  factory Merchant([void Function(ServiceBuilder) updates]) = _$Merchant;
}
