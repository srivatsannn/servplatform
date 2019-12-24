import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'user.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class User implements Built<User, ServiceBuilder> {
  @nullable
  int get id;

  String get user_id;
  String get full_name;
  String get phone_number;
  String get profile_pic;
  String get recommended_services;
  String get recommended_stories;
  String get recommended_categories;
  String get recommended_services_in_each_recommended_category;
  String get notifications;
  String get profile_completion_steps_pending;
  String get segment;
  String get age;
  String get longitude;
  String get latitude;
  String get friends;
  String get rating;
  String get orders;
  String get payment_methods;
  String get address;
  String get password_reset_token;
  String get is_blocked;
  String get vendor_image;
  String get device_type;
  String get app_versioncode;
  String get language;
  String get last_login_date_time;
  String get creation_datetime;
  String get vendor_api_key;
  String get is_phone_verified;
  String get credits;
  String get pending_amount;
  String get successful_task_count;
  String get referral_code;
  String get referrer_id;
  String get reference_id;
  String get is_first_login;
  String get registration_status;
  String get push_device_type;
  String get login_from;
  String get custom_field_status;
  String get subscription_plan;
  String get is_subscribed;
  String get chat_enabled;
  String get cookie_accepted;
  String get dob;
  String get creation_date;
  String get changed_email;
  String get is_email_verified;
  String get is_vendor_verified;
  String get reason_of_rejection;
  String get last_payment_method;
  String get is_cash_on_delivery;
  String get is_deleted;
  String get signup_type;
  String get current_city;
  String get origin_city;
  String get is_fast_forward;
  String get default_tip;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(User.serializer, this));
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
  factory User([void Function(ServiceBuilder) updates]) = _$User;
}
