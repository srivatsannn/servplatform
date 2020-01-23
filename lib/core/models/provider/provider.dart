import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;

part 'provider.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Provider implements Built<Provider, ProviderBuilder> {
  @nullable
  int get id;

  @nullable 
  String get provider_key;
  @nullable
  String get provider_name;
  @nullable
  String get discount_and_other_info;
  @nullable
  BuiltList<String> get area_serviced_geofence;
  @nullable
  String get company_address;
  @nullable
  String get display_address;
  @nullable
  String get company_longitude;
  @nullable
  String get company_latitude;
  @nullable
  String get phone;
  @nullable
  String get is_active;
  @nullable
  String get logo_url;
  @nullable
  String get description;
  @nullable
  String get long_description;
  @nullable
  BuiltList<String> get key_highlights;
  @nullable
  String get introduction;
  @nullable
  String get multi_image_url;
  @nullable
  String get reviews_key;
  @nullable
  String get story_key;
  @nullable
  String get is_blocked;
  @nullable
  String get total_earnings;
  @nullable
  String get number_of_steps_left;
  @nullable
  String get setup_level;
  @nullable
  BuiltList<String> get merchant_permission;
  @nullable
  String get view_task;
  @nullable
  String get add_task;
  @nullable
  String get add_team;
  @nullable
  BuiltList<String> get view_team;
  @nullable
  String get add_region;
  @nullable
  String get view_region;
  @nullable
  String get add_agent;
  @nullable
  String get view_agent;
  @nullable
  String get view_fleet_availability;
  @nullable
  String get edit_fleet_availability;
  @nullable
  String get teams;
  @nullable
  String get commission_percentage;
 



  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Provider.serializer, this)));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Provider.serializer, this));
  }

  static Provider fromJson(String jsonString) {
    return serializers.deserializeWith(
      Provider.serializer,
      json.decode(jsonString),
    );
  }

  static Provider fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Provider.serializer,
      map,
    );
  }

  Provider._();
  static Serializer<Provider> get serializer => _$providerSerializer;
  factory Provider([void Function(ProviderBuilder) updates]) = _$Provider;
}
