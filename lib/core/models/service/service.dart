import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;

part 'service.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Service implements Built<Service, ServiceBuilder> {
  @nullable
  int get id;
  @nullable
  String get service;

  String get provider_key;
  @nullable
   @nullable String get percentage_match;
  @nullable
  String get service_description;
  @nullable
  String get service_time;
  @nullable
  String get unit;
  @nullable
  String get multi_img_url;
  @nullable
  String get category_key;
  @nullable
  String get parent_category_key;
  @nullable
  BuiltList<String> get customization; // it is an object
  String get inventory_enabled;
  @nullable
  String get available_quantity;
  @nullable
  String get minimum_quatity;
  @nullable
  String get is_side_order;
  @nullable
  String get has_pickup;
  @nullable
  String get has_delivery;



  @nullable
  String get service_name;

  @nullable
  String get currency;

  @nullable
  String get price;
  @nullable
  String get logo_url;

  @nullable
  String get is_multiple;

  String toJson() {
    return json.encode(serializers.serializeWith(Service.serializer, this));
  }

  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Service.serializer, this)));
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
