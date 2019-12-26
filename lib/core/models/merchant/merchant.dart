import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:get_it/get_it.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'merchant.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Merchant implements Built<Merchant, MerchantBuilder> {
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
  String get phone_number;
  String get country_code;
  String get first_name;
  String get last_name;
  String get store_name;
  String get description;
  String get logo;
  String get thumb_url;
  String get thumb_list;
  String get banner_image;
  String get mobile_banner_image;
  String get device_token;
  String get country_id;
  String get state_id;
  String get city_id;
  String get latitude;
  String get longitude;
  String get serving_distance;
  String get is_blocked;
  String get creation_datetime;
  String get update_datetime;
  String get tookan_team_id;
  String get store_rating;
  String get total_ratings_count;
  String get total_review_count;
  String get total_ratings_sum;
  String get last_review_rating;
  String get schedule_type;
  String get open_close_busy;
  String get partial_open_close_text;
  String get new_email;
  String get email_verification_token;
  String get commission_type;
  String get commission_value;
  String get is_deleted;
  String get verification_status;
  String get seo_fields;
  String get storepage_slug;
  String get stripe_connect_currency;
  String get stripe_connect_country;
  String get delivery_charges;
  String get enable_merchant_delivery_charges;
  String get dynamic_delivery_charges;
  String get template_name;
  String get order_Details;
  String get has_categories;
  String get sponsorship_is_active;

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
  factory Merchant([void Function(MerchantBuilder) updates]) = _$Merchant;
}
