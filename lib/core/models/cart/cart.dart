import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;

part 'cart.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Cart implements Built<Cart, CartBuilder> {
  @nullable
  int get id;
  @nullable
  String get cart_key;
  @nullable
  String get provider_key;
  @nullable
  String get service_key;
  @nullable
  String get url;
  @nullable
  String get location;
  @nullable
  String get eta;
  @nullable
  String get discount_options;
  @nullable
  String get delivery_note;
  @nullable
  String get order_key;
  @nullable
  String get bill_summary_collection;
  @nullable
  String get payment_methods;
  @nullable
  String get promo_codes;
  @nullable
  String get tip;
  

  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Cart.serializer, this)));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Cart.serializer, this));
  }

  static Cart fromJson(String jsonString) {
    return serializers.deserializeWith(
      Cart.serializer,
      json.decode(jsonString),
    );
  }

  static Cart fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Cart.serializer,
      map,
    );
  }

  Cart._();
  static Serializer<Cart> get serializer => _$cartSerializer;
  factory Cart([void Function(CartBuilder) updates]) = _$Cart;
}
