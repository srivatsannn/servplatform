// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.user_id != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.user_id,
            specifiedType: const FullType(String)));
    }
    if (object.full_name != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(object.full_name,
            specifiedType: const FullType(String)));
    }
    if (object.phone_number != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phone_number,
            specifiedType: const FullType(String)));
    }
    if (object.profile_pic != null) {
      result
        ..add('profile_pic')
        ..add(serializers.serialize(object.profile_pic,
            specifiedType: const FullType(String)));
    }
    if (object.recommended_services != null) {
      result
        ..add('recommended_services')
        ..add(serializers.serialize(object.recommended_services,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.recommended_stories != null) {
      result
        ..add('recommended_stories')
        ..add(serializers.serialize(object.recommended_stories,
            specifiedType: const FullType(String)));
    }
    if (object.recommended_categories != null) {
      result
        ..add('recommended_categories')
        ..add(serializers.serialize(object.recommended_categories,
            specifiedType: const FullType(String)));
    }
    if (object.recommended_services_in_each_recommended_category != null) {
      result
        ..add('recommended_services_in_each_recommended_category')
        ..add(serializers.serialize(
            object.recommended_services_in_each_recommended_category,
            specifiedType: const FullType(String)));
    }
    if (object.notifications != null) {
      result
        ..add('notifications')
        ..add(serializers.serialize(object.notifications,
            specifiedType: const FullType(String)));
    }
    if (object.profile_completion_steps_pending != null) {
      result
        ..add('profile_completion_steps_pending')
        ..add(serializers.serialize(object.profile_completion_steps_pending,
            specifiedType: const FullType(String)));
    }
    if (object.segment != null) {
      result
        ..add('segment')
        ..add(serializers.serialize(object.segment,
            specifiedType: const FullType(String)));
    }
    if (object.age != null) {
      result
        ..add('age')
        ..add(serializers.serialize(object.age,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(String)));
    }
    if (object.friends != null) {
      result
        ..add('friends')
        ..add(serializers.serialize(object.friends,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(String)));
    }
    if (object.orders != null) {
      result
        ..add('orders')
        ..add(serializers.serialize(object.orders,
            specifiedType: const FullType(String)));
    }
    if (object.payment_methods != null) {
      result
        ..add('payment_methods')
        ..add(serializers.serialize(object.payment_methods,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.password_reset_token != null) {
      result
        ..add('password_reset_token')
        ..add(serializers.serialize(object.password_reset_token,
            specifiedType: const FullType(String)));
    }
    if (object.is_blocked != null) {
      result
        ..add('is_blocked')
        ..add(serializers.serialize(object.is_blocked,
            specifiedType: const FullType(String)));
    }
    if (object.vendor_image != null) {
      result
        ..add('vendor_image')
        ..add(serializers.serialize(object.vendor_image,
            specifiedType: const FullType(String)));
    }
    if (object.device_type != null) {
      result
        ..add('device_type')
        ..add(serializers.serialize(object.device_type,
            specifiedType: const FullType(String)));
    }
    if (object.app_versioncode != null) {
      result
        ..add('app_versioncode')
        ..add(serializers.serialize(object.app_versioncode,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.last_login_date_time != null) {
      result
        ..add('last_login_date_time')
        ..add(serializers.serialize(object.last_login_date_time,
            specifiedType: const FullType(String)));
    }
    if (object.creation_datetime != null) {
      result
        ..add('creation_datetime')
        ..add(serializers.serialize(object.creation_datetime,
            specifiedType: const FullType(String)));
    }
    if (object.vendor_api_key != null) {
      result
        ..add('vendor_api_key')
        ..add(serializers.serialize(object.vendor_api_key,
            specifiedType: const FullType(String)));
    }
    if (object.is_phone_verified != null) {
      result
        ..add('is_phone_verified')
        ..add(serializers.serialize(object.is_phone_verified,
            specifiedType: const FullType(String)));
    }
    if (object.credits != null) {
      result
        ..add('credits')
        ..add(serializers.serialize(object.credits,
            specifiedType: const FullType(String)));
    }
    if (object.pending_amount != null) {
      result
        ..add('pending_amount')
        ..add(serializers.serialize(object.pending_amount,
            specifiedType: const FullType(String)));
    }
    if (object.successful_task_count != null) {
      result
        ..add('successful_task_count')
        ..add(serializers.serialize(object.successful_task_count,
            specifiedType: const FullType(String)));
    }
    if (object.referral_code != null) {
      result
        ..add('referral_code')
        ..add(serializers.serialize(object.referral_code,
            specifiedType: const FullType(String)));
    }
    if (object.referrer_id != null) {
      result
        ..add('referrer_id')
        ..add(serializers.serialize(object.referrer_id,
            specifiedType: const FullType(String)));
    }
    if (object.reference_id != null) {
      result
        ..add('reference_id')
        ..add(serializers.serialize(object.reference_id,
            specifiedType: const FullType(String)));
    }
    if (object.is_first_login != null) {
      result
        ..add('is_first_login')
        ..add(serializers.serialize(object.is_first_login,
            specifiedType: const FullType(String)));
    }
    if (object.registration_status != null) {
      result
        ..add('registration_status')
        ..add(serializers.serialize(object.registration_status,
            specifiedType: const FullType(String)));
    }
    if (object.push_device_type != null) {
      result
        ..add('push_device_type')
        ..add(serializers.serialize(object.push_device_type,
            specifiedType: const FullType(String)));
    }
    if (object.login_from != null) {
      result
        ..add('login_from')
        ..add(serializers.serialize(object.login_from,
            specifiedType: const FullType(String)));
    }
    if (object.custom_field_status != null) {
      result
        ..add('custom_field_status')
        ..add(serializers.serialize(object.custom_field_status,
            specifiedType: const FullType(String)));
    }
    if (object.subscription_plan != null) {
      result
        ..add('subscription_plan')
        ..add(serializers.serialize(object.subscription_plan,
            specifiedType: const FullType(String)));
    }
    if (object.is_subscribed != null) {
      result
        ..add('is_subscribed')
        ..add(serializers.serialize(object.is_subscribed,
            specifiedType: const FullType(String)));
    }
    if (object.chat_enabled != null) {
      result
        ..add('chat_enabled')
        ..add(serializers.serialize(object.chat_enabled,
            specifiedType: const FullType(String)));
    }
    if (object.cookie_accepted != null) {
      result
        ..add('cookie_accepted')
        ..add(serializers.serialize(object.cookie_accepted,
            specifiedType: const FullType(String)));
    }
    if (object.dob != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(object.dob,
            specifiedType: const FullType(String)));
    }
    if (object.creation_date != null) {
      result
        ..add('creation_date')
        ..add(serializers.serialize(object.creation_date,
            specifiedType: const FullType(String)));
    }
    if (object.changed_email != null) {
      result
        ..add('changed_email')
        ..add(serializers.serialize(object.changed_email,
            specifiedType: const FullType(String)));
    }
    if (object.is_email_verified != null) {
      result
        ..add('is_email_verified')
        ..add(serializers.serialize(object.is_email_verified,
            specifiedType: const FullType(String)));
    }
    if (object.is_vendor_verified != null) {
      result
        ..add('is_vendor_verified')
        ..add(serializers.serialize(object.is_vendor_verified,
            specifiedType: const FullType(String)));
    }
    if (object.reason_of_rejection != null) {
      result
        ..add('reason_of_rejection')
        ..add(serializers.serialize(object.reason_of_rejection,
            specifiedType: const FullType(String)));
    }
    if (object.last_payment_method != null) {
      result
        ..add('last_payment_method')
        ..add(serializers.serialize(object.last_payment_method,
            specifiedType: const FullType(String)));
    }
    if (object.is_cash_on_delivery != null) {
      result
        ..add('is_cash_on_delivery')
        ..add(serializers.serialize(object.is_cash_on_delivery,
            specifiedType: const FullType(String)));
    }
    if (object.is_deleted != null) {
      result
        ..add('is_deleted')
        ..add(serializers.serialize(object.is_deleted,
            specifiedType: const FullType(String)));
    }
    if (object.signup_type != null) {
      result
        ..add('signup_type')
        ..add(serializers.serialize(object.signup_type,
            specifiedType: const FullType(String)));
    }
    if (object.current_city != null) {
      result
        ..add('current_city')
        ..add(serializers.serialize(object.current_city,
            specifiedType: const FullType(String)));
    }
    if (object.origin_city != null) {
      result
        ..add('origin_city')
        ..add(serializers.serialize(object.origin_city,
            specifiedType: const FullType(String)));
    }
    if (object.is_fast_forward != null) {
      result
        ..add('is_fast_forward')
        ..add(serializers.serialize(object.is_fast_forward,
            specifiedType: const FullType(String)));
    }
    if (object.default_tip != null) {
      result
        ..add('default_tip')
        ..add(serializers.serialize(object.default_tip,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_id':
          result.user_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.full_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phone_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_pic':
          result.profile_pic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recommended_services':
          result.recommended_services.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'recommended_stories':
          result.recommended_stories = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recommended_categories':
          result.recommended_categories = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recommended_services_in_each_recommended_category':
          result.recommended_services_in_each_recommended_category = serializers
                  .deserialize(value, specifiedType: const FullType(String))
              as String;
          break;
        case 'notifications':
          result.notifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_completion_steps_pending':
          result.profile_completion_steps_pending = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'segment':
          result.segment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'friends':
          result.friends = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orders':
          result.orders = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payment_methods':
          result.payment_methods = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password_reset_token':
          result.password_reset_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_blocked':
          result.is_blocked = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vendor_image':
          result.vendor_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'device_type':
          result.device_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'app_versioncode':
          result.app_versioncode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_login_date_time':
          result.last_login_date_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creation_datetime':
          result.creation_datetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vendor_api_key':
          result.vendor_api_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_phone_verified':
          result.is_phone_verified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'credits':
          result.credits = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pending_amount':
          result.pending_amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'successful_task_count':
          result.successful_task_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referral_code':
          result.referral_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'referrer_id':
          result.referrer_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reference_id':
          result.reference_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_first_login':
          result.is_first_login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'registration_status':
          result.registration_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'push_device_type':
          result.push_device_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login_from':
          result.login_from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'custom_field_status':
          result.custom_field_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscription_plan':
          result.subscription_plan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_subscribed':
          result.is_subscribed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'chat_enabled':
          result.chat_enabled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cookie_accepted':
          result.cookie_accepted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creation_date':
          result.creation_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'changed_email':
          result.changed_email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_email_verified':
          result.is_email_verified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_vendor_verified':
          result.is_vendor_verified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reason_of_rejection':
          result.reason_of_rejection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_payment_method':
          result.last_payment_method = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_cash_on_delivery':
          result.is_cash_on_delivery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'signup_type':
          result.signup_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_city':
          result.current_city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origin_city':
          result.origin_city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_fast_forward':
          result.is_fast_forward = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'default_tip':
          result.default_tip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final int id;
  @override
  final String user_id;
  @override
  final String full_name;
  @override
  final String phone_number;
  @override
  final String profile_pic;
  @override
  final BuiltList<String> recommended_services;
  @override
  final String recommended_stories;
  @override
  final String recommended_categories;
  @override
  final String recommended_services_in_each_recommended_category;
  @override
  final String notifications;
  @override
  final String profile_completion_steps_pending;
  @override
  final String segment;
  @override
  final String age;
  @override
  final String longitude;
  @override
  final String latitude;
  @override
  final String friends;
  @override
  final String rating;
  @override
  final String orders;
  @override
  final String payment_methods;
  @override
  final String address;
  @override
  final String password_reset_token;
  @override
  final String is_blocked;
  @override
  final String vendor_image;
  @override
  final String device_type;
  @override
  final String app_versioncode;
  @override
  final String language;
  @override
  final String last_login_date_time;
  @override
  final String creation_datetime;
  @override
  final String vendor_api_key;
  @override
  final String is_phone_verified;
  @override
  final String credits;
  @override
  final String pending_amount;
  @override
  final String successful_task_count;
  @override
  final String referral_code;
  @override
  final String referrer_id;
  @override
  final String reference_id;
  @override
  final String is_first_login;
  @override
  final String registration_status;
  @override
  final String push_device_type;
  @override
  final String login_from;
  @override
  final String custom_field_status;
  @override
  final String subscription_plan;
  @override
  final String is_subscribed;
  @override
  final String chat_enabled;
  @override
  final String cookie_accepted;
  @override
  final String dob;
  @override
  final String creation_date;
  @override
  final String changed_email;
  @override
  final String is_email_verified;
  @override
  final String is_vendor_verified;
  @override
  final String reason_of_rejection;
  @override
  final String last_payment_method;
  @override
  final String is_cash_on_delivery;
  @override
  final String is_deleted;
  @override
  final String signup_type;
  @override
  final String current_city;
  @override
  final String origin_city;
  @override
  final String is_fast_forward;
  @override
  final String default_tip;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.user_id,
      this.full_name,
      this.phone_number,
      this.profile_pic,
      this.recommended_services,
      this.recommended_stories,
      this.recommended_categories,
      this.recommended_services_in_each_recommended_category,
      this.notifications,
      this.profile_completion_steps_pending,
      this.segment,
      this.age,
      this.longitude,
      this.latitude,
      this.friends,
      this.rating,
      this.orders,
      this.payment_methods,
      this.address,
      this.password_reset_token,
      this.is_blocked,
      this.vendor_image,
      this.device_type,
      this.app_versioncode,
      this.language,
      this.last_login_date_time,
      this.creation_datetime,
      this.vendor_api_key,
      this.is_phone_verified,
      this.credits,
      this.pending_amount,
      this.successful_task_count,
      this.referral_code,
      this.referrer_id,
      this.reference_id,
      this.is_first_login,
      this.registration_status,
      this.push_device_type,
      this.login_from,
      this.custom_field_status,
      this.subscription_plan,
      this.is_subscribed,
      this.chat_enabled,
      this.cookie_accepted,
      this.dob,
      this.creation_date,
      this.changed_email,
      this.is_email_verified,
      this.is_vendor_verified,
      this.reason_of_rejection,
      this.last_payment_method,
      this.is_cash_on_delivery,
      this.is_deleted,
      this.signup_type,
      this.current_city,
      this.origin_city,
      this.is_fast_forward,
      this.default_tip})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        user_id == other.user_id &&
        full_name == other.full_name &&
        phone_number == other.phone_number &&
        profile_pic == other.profile_pic &&
        recommended_services == other.recommended_services &&
        recommended_stories == other.recommended_stories &&
        recommended_categories == other.recommended_categories &&
        recommended_services_in_each_recommended_category ==
            other.recommended_services_in_each_recommended_category &&
        notifications == other.notifications &&
        profile_completion_steps_pending ==
            other.profile_completion_steps_pending &&
        segment == other.segment &&
        age == other.age &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        friends == other.friends &&
        rating == other.rating &&
        orders == other.orders &&
        payment_methods == other.payment_methods &&
        address == other.address &&
        password_reset_token == other.password_reset_token &&
        is_blocked == other.is_blocked &&
        vendor_image == other.vendor_image &&
        device_type == other.device_type &&
        app_versioncode == other.app_versioncode &&
        language == other.language &&
        last_login_date_time == other.last_login_date_time &&
        creation_datetime == other.creation_datetime &&
        vendor_api_key == other.vendor_api_key &&
        is_phone_verified == other.is_phone_verified &&
        credits == other.credits &&
        pending_amount == other.pending_amount &&
        successful_task_count == other.successful_task_count &&
        referral_code == other.referral_code &&
        referrer_id == other.referrer_id &&
        reference_id == other.reference_id &&
        is_first_login == other.is_first_login &&
        registration_status == other.registration_status &&
        push_device_type == other.push_device_type &&
        login_from == other.login_from &&
        custom_field_status == other.custom_field_status &&
        subscription_plan == other.subscription_plan &&
        is_subscribed == other.is_subscribed &&
        chat_enabled == other.chat_enabled &&
        cookie_accepted == other.cookie_accepted &&
        dob == other.dob &&
        creation_date == other.creation_date &&
        changed_email == other.changed_email &&
        is_email_verified == other.is_email_verified &&
        is_vendor_verified == other.is_vendor_verified &&
        reason_of_rejection == other.reason_of_rejection &&
        last_payment_method == other.last_payment_method &&
        is_cash_on_delivery == other.is_cash_on_delivery &&
        is_deleted == other.is_deleted &&
        signup_type == other.signup_type &&
        current_city == other.current_city &&
        origin_city == other.origin_city &&
        is_fast_forward == other.is_fast_forward &&
        default_tip == other.default_tip;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), user_id.hashCode), full_name.hashCode), phone_number.hashCode), profile_pic.hashCode), recommended_services.hashCode), recommended_stories.hashCode), recommended_categories.hashCode), recommended_services_in_each_recommended_category.hashCode), notifications.hashCode), profile_completion_steps_pending.hashCode), segment.hashCode), age.hashCode), longitude.hashCode), latitude.hashCode), friends.hashCode), rating.hashCode), orders.hashCode), payment_methods.hashCode), address.hashCode), password_reset_token.hashCode), is_blocked.hashCode), vendor_image.hashCode), device_type.hashCode), app_versioncode.hashCode), language.hashCode), last_login_date_time.hashCode), creation_datetime.hashCode), vendor_api_key.hashCode), is_phone_verified.hashCode), credits.hashCode), pending_amount.hashCode), successful_task_count.hashCode), referral_code.hashCode), referrer_id.hashCode), reference_id.hashCode), is_first_login.hashCode), registration_status.hashCode), push_device_type.hashCode), login_from.hashCode),
                                                                                custom_field_status.hashCode),
                                                                            subscription_plan.hashCode),
                                                                        is_subscribed.hashCode),
                                                                    chat_enabled.hashCode),
                                                                cookie_accepted.hashCode),
                                                            dob.hashCode),
                                                        creation_date.hashCode),
                                                    changed_email.hashCode),
                                                is_email_verified.hashCode),
                                            is_vendor_verified.hashCode),
                                        reason_of_rejection.hashCode),
                                    last_payment_method.hashCode),
                                is_cash_on_delivery.hashCode),
                            is_deleted.hashCode),
                        signup_type.hashCode),
                    current_city.hashCode),
                origin_city.hashCode),
            is_fast_forward.hashCode),
        default_tip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('user_id', user_id)
          ..add('full_name', full_name)
          ..add('phone_number', phone_number)
          ..add('profile_pic', profile_pic)
          ..add('recommended_services', recommended_services)
          ..add('recommended_stories', recommended_stories)
          ..add('recommended_categories', recommended_categories)
          ..add('recommended_services_in_each_recommended_category',
              recommended_services_in_each_recommended_category)
          ..add('notifications', notifications)
          ..add('profile_completion_steps_pending',
              profile_completion_steps_pending)
          ..add('segment', segment)
          ..add('age', age)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('friends', friends)
          ..add('rating', rating)
          ..add('orders', orders)
          ..add('payment_methods', payment_methods)
          ..add('address', address)
          ..add('password_reset_token', password_reset_token)
          ..add('is_blocked', is_blocked)
          ..add('vendor_image', vendor_image)
          ..add('device_type', device_type)
          ..add('app_versioncode', app_versioncode)
          ..add('language', language)
          ..add('last_login_date_time', last_login_date_time)
          ..add('creation_datetime', creation_datetime)
          ..add('vendor_api_key', vendor_api_key)
          ..add('is_phone_verified', is_phone_verified)
          ..add('credits', credits)
          ..add('pending_amount', pending_amount)
          ..add('successful_task_count', successful_task_count)
          ..add('referral_code', referral_code)
          ..add('referrer_id', referrer_id)
          ..add('reference_id', reference_id)
          ..add('is_first_login', is_first_login)
          ..add('registration_status', registration_status)
          ..add('push_device_type', push_device_type)
          ..add('login_from', login_from)
          ..add('custom_field_status', custom_field_status)
          ..add('subscription_plan', subscription_plan)
          ..add('is_subscribed', is_subscribed)
          ..add('chat_enabled', chat_enabled)
          ..add('cookie_accepted', cookie_accepted)
          ..add('dob', dob)
          ..add('creation_date', creation_date)
          ..add('changed_email', changed_email)
          ..add('is_email_verified', is_email_verified)
          ..add('is_vendor_verified', is_vendor_verified)
          ..add('reason_of_rejection', reason_of_rejection)
          ..add('last_payment_method', last_payment_method)
          ..add('is_cash_on_delivery', is_cash_on_delivery)
          ..add('is_deleted', is_deleted)
          ..add('signup_type', signup_type)
          ..add('current_city', current_city)
          ..add('origin_city', origin_city)
          ..add('is_fast_forward', is_fast_forward)
          ..add('default_tip', default_tip))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _user_id;
  String get user_id => _$this._user_id;
  set user_id(String user_id) => _$this._user_id = user_id;

  String _full_name;
  String get full_name => _$this._full_name;
  set full_name(String full_name) => _$this._full_name = full_name;

  String _phone_number;
  String get phone_number => _$this._phone_number;
  set phone_number(String phone_number) => _$this._phone_number = phone_number;

  String _profile_pic;
  String get profile_pic => _$this._profile_pic;
  set profile_pic(String profile_pic) => _$this._profile_pic = profile_pic;

  ListBuilder<String> _recommended_services;
  ListBuilder<String> get recommended_services =>
      _$this._recommended_services ??= new ListBuilder<String>();
  set recommended_services(ListBuilder<String> recommended_services) =>
      _$this._recommended_services = recommended_services;

  String _recommended_stories;
  String get recommended_stories => _$this._recommended_stories;
  set recommended_stories(String recommended_stories) =>
      _$this._recommended_stories = recommended_stories;

  String _recommended_categories;
  String get recommended_categories => _$this._recommended_categories;
  set recommended_categories(String recommended_categories) =>
      _$this._recommended_categories = recommended_categories;

  String _recommended_services_in_each_recommended_category;
  String get recommended_services_in_each_recommended_category =>
      _$this._recommended_services_in_each_recommended_category;
  set recommended_services_in_each_recommended_category(
          String recommended_services_in_each_recommended_category) =>
      _$this._recommended_services_in_each_recommended_category =
          recommended_services_in_each_recommended_category;

  String _notifications;
  String get notifications => _$this._notifications;
  set notifications(String notifications) =>
      _$this._notifications = notifications;

  String _profile_completion_steps_pending;
  String get profile_completion_steps_pending =>
      _$this._profile_completion_steps_pending;
  set profile_completion_steps_pending(
          String profile_completion_steps_pending) =>
      _$this._profile_completion_steps_pending =
          profile_completion_steps_pending;

  String _segment;
  String get segment => _$this._segment;
  set segment(String segment) => _$this._segment = segment;

  String _age;
  String get age => _$this._age;
  set age(String age) => _$this._age = age;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _friends;
  String get friends => _$this._friends;
  set friends(String friends) => _$this._friends = friends;

  String _rating;
  String get rating => _$this._rating;
  set rating(String rating) => _$this._rating = rating;

  String _orders;
  String get orders => _$this._orders;
  set orders(String orders) => _$this._orders = orders;

  String _payment_methods;
  String get payment_methods => _$this._payment_methods;
  set payment_methods(String payment_methods) =>
      _$this._payment_methods = payment_methods;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _password_reset_token;
  String get password_reset_token => _$this._password_reset_token;
  set password_reset_token(String password_reset_token) =>
      _$this._password_reset_token = password_reset_token;

  String _is_blocked;
  String get is_blocked => _$this._is_blocked;
  set is_blocked(String is_blocked) => _$this._is_blocked = is_blocked;

  String _vendor_image;
  String get vendor_image => _$this._vendor_image;
  set vendor_image(String vendor_image) => _$this._vendor_image = vendor_image;

  String _device_type;
  String get device_type => _$this._device_type;
  set device_type(String device_type) => _$this._device_type = device_type;

  String _app_versioncode;
  String get app_versioncode => _$this._app_versioncode;
  set app_versioncode(String app_versioncode) =>
      _$this._app_versioncode = app_versioncode;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _last_login_date_time;
  String get last_login_date_time => _$this._last_login_date_time;
  set last_login_date_time(String last_login_date_time) =>
      _$this._last_login_date_time = last_login_date_time;

  String _creation_datetime;
  String get creation_datetime => _$this._creation_datetime;
  set creation_datetime(String creation_datetime) =>
      _$this._creation_datetime = creation_datetime;

  String _vendor_api_key;
  String get vendor_api_key => _$this._vendor_api_key;
  set vendor_api_key(String vendor_api_key) =>
      _$this._vendor_api_key = vendor_api_key;

  String _is_phone_verified;
  String get is_phone_verified => _$this._is_phone_verified;
  set is_phone_verified(String is_phone_verified) =>
      _$this._is_phone_verified = is_phone_verified;

  String _credits;
  String get credits => _$this._credits;
  set credits(String credits) => _$this._credits = credits;

  String _pending_amount;
  String get pending_amount => _$this._pending_amount;
  set pending_amount(String pending_amount) =>
      _$this._pending_amount = pending_amount;

  String _successful_task_count;
  String get successful_task_count => _$this._successful_task_count;
  set successful_task_count(String successful_task_count) =>
      _$this._successful_task_count = successful_task_count;

  String _referral_code;
  String get referral_code => _$this._referral_code;
  set referral_code(String referral_code) =>
      _$this._referral_code = referral_code;

  String _referrer_id;
  String get referrer_id => _$this._referrer_id;
  set referrer_id(String referrer_id) => _$this._referrer_id = referrer_id;

  String _reference_id;
  String get reference_id => _$this._reference_id;
  set reference_id(String reference_id) => _$this._reference_id = reference_id;

  String _is_first_login;
  String get is_first_login => _$this._is_first_login;
  set is_first_login(String is_first_login) =>
      _$this._is_first_login = is_first_login;

  String _registration_status;
  String get registration_status => _$this._registration_status;
  set registration_status(String registration_status) =>
      _$this._registration_status = registration_status;

  String _push_device_type;
  String get push_device_type => _$this._push_device_type;
  set push_device_type(String push_device_type) =>
      _$this._push_device_type = push_device_type;

  String _login_from;
  String get login_from => _$this._login_from;
  set login_from(String login_from) => _$this._login_from = login_from;

  String _custom_field_status;
  String get custom_field_status => _$this._custom_field_status;
  set custom_field_status(String custom_field_status) =>
      _$this._custom_field_status = custom_field_status;

  String _subscription_plan;
  String get subscription_plan => _$this._subscription_plan;
  set subscription_plan(String subscription_plan) =>
      _$this._subscription_plan = subscription_plan;

  String _is_subscribed;
  String get is_subscribed => _$this._is_subscribed;
  set is_subscribed(String is_subscribed) =>
      _$this._is_subscribed = is_subscribed;

  String _chat_enabled;
  String get chat_enabled => _$this._chat_enabled;
  set chat_enabled(String chat_enabled) => _$this._chat_enabled = chat_enabled;

  String _cookie_accepted;
  String get cookie_accepted => _$this._cookie_accepted;
  set cookie_accepted(String cookie_accepted) =>
      _$this._cookie_accepted = cookie_accepted;

  String _dob;
  String get dob => _$this._dob;
  set dob(String dob) => _$this._dob = dob;

  String _creation_date;
  String get creation_date => _$this._creation_date;
  set creation_date(String creation_date) =>
      _$this._creation_date = creation_date;

  String _changed_email;
  String get changed_email => _$this._changed_email;
  set changed_email(String changed_email) =>
      _$this._changed_email = changed_email;

  String _is_email_verified;
  String get is_email_verified => _$this._is_email_verified;
  set is_email_verified(String is_email_verified) =>
      _$this._is_email_verified = is_email_verified;

  String _is_vendor_verified;
  String get is_vendor_verified => _$this._is_vendor_verified;
  set is_vendor_verified(String is_vendor_verified) =>
      _$this._is_vendor_verified = is_vendor_verified;

  String _reason_of_rejection;
  String get reason_of_rejection => _$this._reason_of_rejection;
  set reason_of_rejection(String reason_of_rejection) =>
      _$this._reason_of_rejection = reason_of_rejection;

  String _last_payment_method;
  String get last_payment_method => _$this._last_payment_method;
  set last_payment_method(String last_payment_method) =>
      _$this._last_payment_method = last_payment_method;

  String _is_cash_on_delivery;
  String get is_cash_on_delivery => _$this._is_cash_on_delivery;
  set is_cash_on_delivery(String is_cash_on_delivery) =>
      _$this._is_cash_on_delivery = is_cash_on_delivery;

  String _is_deleted;
  String get is_deleted => _$this._is_deleted;
  set is_deleted(String is_deleted) => _$this._is_deleted = is_deleted;

  String _signup_type;
  String get signup_type => _$this._signup_type;
  set signup_type(String signup_type) => _$this._signup_type = signup_type;

  String _current_city;
  String get current_city => _$this._current_city;
  set current_city(String current_city) => _$this._current_city = current_city;

  String _origin_city;
  String get origin_city => _$this._origin_city;
  set origin_city(String origin_city) => _$this._origin_city = origin_city;

  String _is_fast_forward;
  String get is_fast_forward => _$this._is_fast_forward;
  set is_fast_forward(String is_fast_forward) =>
      _$this._is_fast_forward = is_fast_forward;

  String _default_tip;
  String get default_tip => _$this._default_tip;
  set default_tip(String default_tip) => _$this._default_tip = default_tip;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _user_id = _$v.user_id;
      _full_name = _$v.full_name;
      _phone_number = _$v.phone_number;
      _profile_pic = _$v.profile_pic;
      _recommended_services = _$v.recommended_services?.toBuilder();
      _recommended_stories = _$v.recommended_stories;
      _recommended_categories = _$v.recommended_categories;
      _recommended_services_in_each_recommended_category =
          _$v.recommended_services_in_each_recommended_category;
      _notifications = _$v.notifications;
      _profile_completion_steps_pending = _$v.profile_completion_steps_pending;
      _segment = _$v.segment;
      _age = _$v.age;
      _longitude = _$v.longitude;
      _latitude = _$v.latitude;
      _friends = _$v.friends;
      _rating = _$v.rating;
      _orders = _$v.orders;
      _payment_methods = _$v.payment_methods;
      _address = _$v.address;
      _password_reset_token = _$v.password_reset_token;
      _is_blocked = _$v.is_blocked;
      _vendor_image = _$v.vendor_image;
      _device_type = _$v.device_type;
      _app_versioncode = _$v.app_versioncode;
      _language = _$v.language;
      _last_login_date_time = _$v.last_login_date_time;
      _creation_datetime = _$v.creation_datetime;
      _vendor_api_key = _$v.vendor_api_key;
      _is_phone_verified = _$v.is_phone_verified;
      _credits = _$v.credits;
      _pending_amount = _$v.pending_amount;
      _successful_task_count = _$v.successful_task_count;
      _referral_code = _$v.referral_code;
      _referrer_id = _$v.referrer_id;
      _reference_id = _$v.reference_id;
      _is_first_login = _$v.is_first_login;
      _registration_status = _$v.registration_status;
      _push_device_type = _$v.push_device_type;
      _login_from = _$v.login_from;
      _custom_field_status = _$v.custom_field_status;
      _subscription_plan = _$v.subscription_plan;
      _is_subscribed = _$v.is_subscribed;
      _chat_enabled = _$v.chat_enabled;
      _cookie_accepted = _$v.cookie_accepted;
      _dob = _$v.dob;
      _creation_date = _$v.creation_date;
      _changed_email = _$v.changed_email;
      _is_email_verified = _$v.is_email_verified;
      _is_vendor_verified = _$v.is_vendor_verified;
      _reason_of_rejection = _$v.reason_of_rejection;
      _last_payment_method = _$v.last_payment_method;
      _is_cash_on_delivery = _$v.is_cash_on_delivery;
      _is_deleted = _$v.is_deleted;
      _signup_type = _$v.signup_type;
      _current_city = _$v.current_city;
      _origin_city = _$v.origin_city;
      _is_fast_forward = _$v.is_fast_forward;
      _default_tip = _$v.default_tip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              user_id: user_id,
              full_name: full_name,
              phone_number: phone_number,
              profile_pic: profile_pic,
              recommended_services: _recommended_services?.build(),
              recommended_stories: recommended_stories,
              recommended_categories: recommended_categories,
              recommended_services_in_each_recommended_category:
                  recommended_services_in_each_recommended_category,
              notifications: notifications,
              profile_completion_steps_pending:
                  profile_completion_steps_pending,
              segment: segment,
              age: age,
              longitude: longitude,
              latitude: latitude,
              friends: friends,
              rating: rating,
              orders: orders,
              payment_methods: payment_methods,
              address: address,
              password_reset_token: password_reset_token,
              is_blocked: is_blocked,
              vendor_image: vendor_image,
              device_type: device_type,
              app_versioncode: app_versioncode,
              language: language,
              last_login_date_time: last_login_date_time,
              creation_datetime: creation_datetime,
              vendor_api_key: vendor_api_key,
              is_phone_verified: is_phone_verified,
              credits: credits,
              pending_amount: pending_amount,
              successful_task_count: successful_task_count,
              referral_code: referral_code,
              referrer_id: referrer_id,
              reference_id: reference_id,
              is_first_login: is_first_login,
              registration_status: registration_status,
              push_device_type: push_device_type,
              login_from: login_from,
              custom_field_status: custom_field_status,
              subscription_plan: subscription_plan,
              is_subscribed: is_subscribed,
              chat_enabled: chat_enabled,
              cookie_accepted: cookie_accepted,
              dob: dob,
              creation_date: creation_date,
              changed_email: changed_email,
              is_email_verified: is_email_verified,
              is_vendor_verified: is_vendor_verified,
              reason_of_rejection: reason_of_rejection,
              last_payment_method: last_payment_method,
              is_cash_on_delivery: is_cash_on_delivery,
              is_deleted: is_deleted,
              signup_type: signup_type,
              current_city: current_city,
              origin_city: origin_city,
              is_fast_forward: is_fast_forward,
              default_tip: default_tip);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recommended_services';
        _recommended_services?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
