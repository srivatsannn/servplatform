import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;


part 'merchant.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Merchant implements Built<Merchant, MerchantBuilder> {
  @nullable
  int get id;
  @nullable
  String get merchant_key;
  @nullable
  String get user_key;
  @nullable
  BuiltList<String> get provider_key;
  @nullable
  String get earnings;
  @nullable
  String get is_verified;
  @nullable
  String get company_address;
  @nullable
  String get display_address;
  @nullable
  String get business_category_id;
  @nullable
  String get phone_number;
  @nullable
  String get country_code;
  @nullable
  String get first_name;
  @nullable
  String get last_name;
  @nullable
  String get store_name;
  @nullable
  String get display_Name;
  @nullable
  String get description;
  @nullable
  String get logo;
  @nullable
  String get thumb_url;
  @nullable
  String get thumb_list;
  @nullable
  String get banner_image;
  @nullable
  String get mobile_banner_image;
  @nullable
  String get device_token;
  @nullable
  String get country_id;
  @nullable
  String get state_id;
  @nullable
  String get city_id;
  @nullable
  String get latitude;
  @nullable
  String get longitude;
  @nullable
  String get serving_distance;
  @nullable
  String get is_active;
  @nullable
  String get is_blocked;
  @nullable
  String get creation_datetime;
  @nullable
  String get update_datetime;
  @nullable
  String get tookan_team_id;
  @nullable
  String get store_rating;
  @nullable
  String get total_ratings_count;
  @nullable
  String get total_review_count;
  @nullable
  String get total_ratings_sum;
  @nullable
  String get last_review_rating;
  @nullable
  String get schedule_type;
  @nullable
  String get open_close_busy;
  @nullable
  String get partial_open_close_text;
  @nullable
  String get new_email;
  @nullable
  String get email_verification_token;
  @nullable
  String get commission_type;
  @nullable
  String get commission_value;
  @nullable
  String get is_deleted;
  @nullable
  String get verification_status;
  @nullable
  String get seo_fields;
  @nullable
  String get storepage_slug;
  @nullable
  String get stripe_connect_currency;
  @nullable
  String get stripe_connect_country;
  @nullable
  String get delivery_charges;
  @nullable
  String get enable_merchant_delivery_charges;
  @nullable
  String get dynamic_delivery_charges;
  @nullable
  String get template_name;
  @nullable
  String get order_Details;
  @nullable
  String get has_categories;
  @nullable
  String get sponsorship_is_active;

  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Merchant.serializer, this)));
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
