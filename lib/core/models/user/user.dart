import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart';

part 'user.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class User implements Built<User, UserBuilder> {
  @nullable
  int get id;
  @nullable
  String get email;
  String get user_id;
  @nullable
  String get full_name;
  @nullable
  String get phone_number;
  @nullable
  String get profile_pic;
  @nullable
  BuiltList<String> get recommended_services;
  @nullable
  String get recommended_stories;
  @nullable
  String get recommended_categories;
  @nullable
 // String get recommended_services_in_each_recommended_category;
  String get notifications;
  @nullable
  String get profile_completion_steps_pending;
  @nullable
  String get segment;
  @nullable
  String get age;
  @nullable
  String get longitude;
  @nullable
  String get latitude;
  @nullable
  String get friends;
  @nullable
  String get rating;
  @nullable
  String get orders;
  @nullable
  String get payment_methods;
  @nullable
  String get address;
  @nullable
  String get password_reset_token;
  @nullable
  String get is_blocked;
  @nullable
  String get vendor_image;
  @nullable
  String get device_type;
  @nullable
  String get app_versioncode;
  @nullable
  String get language;
  @nullable
  String get last_login_date_time;
  @nullable
  String get creation_datetime;
  @nullable
  String get vendor_api_key;
  @nullable
  String get is_phone_verified;
  @nullable
  String get credits;
  @nullable
  String get pending_amount;
  @nullable
  String get successful_task_count;
  @nullable
  String get referral_code;
  @nullable
  String get referrer_id;
  @nullable
  String get reference_id;
  @nullable
  String get is_first_login;
  @nullable
  String get registration_status;
  @nullable
  String get push_device_type;
  @nullable
  String get login_from;
  @nullable
  String get custom_field_status;
  @nullable
  String get subscription_plan;
  @nullable
  String get is_subscribed;
  @nullable
  String get chat_enabled;
  @nullable
  String get cookie_accepted;
  @nullable
  String get dob;
  @nullable
  String get creation_date;
  @nullable
  String get changed_email;
  @nullable
  String get is_email_verified;
  @nullable
  String get is_vendor_verified;
  @nullable
  String get reason_of_rejection;
  @nullable
  String get last_payment_method;
  @nullable
  String get is_cash_on_delivery;
  @nullable
  String get is_deleted;
  @nullable
  String get signup_type;
  @nullable
  String get current_city;
  @nullable
  String get origin_city;
  @nullable
  String get is_fast_forward;
  @nullable
  String get default_tip;

  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(User.serializer, this)));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

  static User fromJson(String jsonString) {
    return serializers.deserializeWith(
      User.serializer,
      json.decode(jsonString),
    );
  }

  static User fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      User.serializer,
      map,
    );
  }

  User._();
  static Serializer<User> get serializer => _$userSerializer;
  factory User([void Function(UserBuilder) updates]) = _$User;
}
