import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'provider.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Provider implements Built<Provider, ProviderBuilder> {
  @nullable
  int get id;

  String get provider_key;
  String get provider_name;
  String get discount_and_other_info;
  String get area_serviced_geofence;
  String get company_address;
  String get display_address;
  String get company_longitude;
  String get company_latitude;
  String get phone;
  String get is_active;
  String get logo_url;
  String get description;
  String get long_description;
  String get key_highlights;
  String get introduction;
  String get multi_image_url;
  String get reviews_key;
  String get story_key;
  String get is_blocked;
  String get total_earnings;
  String get number_of_steps_left;
  String get setup_level;
  String get merchant_permission;
  String get view_task;
  String get add_task;
  String get add_team;
  String get view_team;
  String get add_region;
  String get view_region;
  String get add_agent;
  String get view_agent;
  String get view_fleet_availability;
  String get edit_fleet_availability;
  String get teams;
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
