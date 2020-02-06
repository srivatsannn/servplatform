// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Merchant> _$merchantSerializer = new _$MerchantSerializer();

class _$MerchantSerializer implements StructuredSerializer<Merchant> {
  @override
  final Iterable<Type> types = const [Merchant, _$Merchant];
  @override
  final String wireName = 'Merchant';

  @override
  Iterable<Object> serialize(Serializers serializers, Merchant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.merchant_key != null) {
      result
        ..add('merchant_key')
        ..add(serializers.serialize(object.merchant_key,
            specifiedType: const FullType(String)));
    }
    if (object.user_key != null) {
      result
        ..add('user_key')
        ..add(serializers.serialize(object.user_key,
            specifiedType: const FullType(String)));
    }
    if (object.provider_key != null) {
      result
        ..add('provider_key')
        ..add(serializers.serialize(object.provider_key,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.earnings != null) {
      result
        ..add('earnings')
        ..add(serializers.serialize(object.earnings,
            specifiedType: const FullType(String)));
    }
    if (object.is_verified != null) {
      result
        ..add('is_verified')
        ..add(serializers.serialize(object.is_verified,
            specifiedType: const FullType(String)));
    }
    if (object.company_address != null) {
      result
        ..add('company_address')
        ..add(serializers.serialize(object.company_address,
            specifiedType: const FullType(String)));
    }
    if (object.display_address != null) {
      result
        ..add('display_address')
        ..add(serializers.serialize(object.display_address,
            specifiedType: const FullType(String)));
    }
    if (object.business_category_id != null) {
      result
        ..add('business_category_id')
        ..add(serializers.serialize(object.business_category_id,
            specifiedType: const FullType(String)));
    }
    if (object.phone_number != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phone_number,
            specifiedType: const FullType(String)));
    }
    if (object.country_code != null) {
      result
        ..add('country_code')
        ..add(serializers.serialize(object.country_code,
            specifiedType: const FullType(String)));
    }
    if (object.first_name != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(object.first_name,
            specifiedType: const FullType(String)));
    }
    if (object.last_name != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(object.last_name,
            specifiedType: const FullType(String)));
    }
    if (object.store_name != null) {
      result
        ..add('store_name')
        ..add(serializers.serialize(object.store_name,
            specifiedType: const FullType(String)));
    }
    if (object.display_Name != null) {
      result
        ..add('display_Name')
        ..add(serializers.serialize(object.display_Name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.logo != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(object.logo,
            specifiedType: const FullType(String)));
    }
    if (object.thumb_url != null) {
      result
        ..add('thumb_url')
        ..add(serializers.serialize(object.thumb_url,
            specifiedType: const FullType(String)));
    }
    if (object.thumb_list != null) {
      result
        ..add('thumb_list')
        ..add(serializers.serialize(object.thumb_list,
            specifiedType: const FullType(String)));
    }
    if (object.banner_image != null) {
      result
        ..add('banner_image')
        ..add(serializers.serialize(object.banner_image,
            specifiedType: const FullType(String)));
    }
    if (object.mobile_banner_image != null) {
      result
        ..add('mobile_banner_image')
        ..add(serializers.serialize(object.mobile_banner_image,
            specifiedType: const FullType(String)));
    }
    if (object.device_token != null) {
      result
        ..add('device_token')
        ..add(serializers.serialize(object.device_token,
            specifiedType: const FullType(String)));
    }
    if (object.country_id != null) {
      result
        ..add('country_id')
        ..add(serializers.serialize(object.country_id,
            specifiedType: const FullType(String)));
    }
    if (object.state_id != null) {
      result
        ..add('state_id')
        ..add(serializers.serialize(object.state_id,
            specifiedType: const FullType(String)));
    }
    if (object.city_id != null) {
      result
        ..add('city_id')
        ..add(serializers.serialize(object.city_id,
            specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(String)));
    }
    if (object.serving_distance != null) {
      result
        ..add('serving_distance')
        ..add(serializers.serialize(object.serving_distance,
            specifiedType: const FullType(String)));
    }
    if (object.is_active != null) {
      result
        ..add('is_active')
        ..add(serializers.serialize(object.is_active,
            specifiedType: const FullType(String)));
    }
    if (object.is_blocked != null) {
      result
        ..add('is_blocked')
        ..add(serializers.serialize(object.is_blocked,
            specifiedType: const FullType(String)));
    }
    if (object.creation_datetime != null) {
      result
        ..add('creation_datetime')
        ..add(serializers.serialize(object.creation_datetime,
            specifiedType: const FullType(String)));
    }
    if (object.update_datetime != null) {
      result
        ..add('update_datetime')
        ..add(serializers.serialize(object.update_datetime,
            specifiedType: const FullType(String)));
    }
    if (object.tookan_team_id != null) {
      result
        ..add('tookan_team_id')
        ..add(serializers.serialize(object.tookan_team_id,
            specifiedType: const FullType(String)));
    }
    if (object.store_rating != null) {
      result
        ..add('store_rating')
        ..add(serializers.serialize(object.store_rating,
            specifiedType: const FullType(String)));
    }
    if (object.total_ratings_count != null) {
      result
        ..add('total_ratings_count')
        ..add(serializers.serialize(object.total_ratings_count,
            specifiedType: const FullType(String)));
    }
    if (object.total_review_count != null) {
      result
        ..add('total_review_count')
        ..add(serializers.serialize(object.total_review_count,
            specifiedType: const FullType(String)));
    }
    if (object.total_ratings_sum != null) {
      result
        ..add('total_ratings_sum')
        ..add(serializers.serialize(object.total_ratings_sum,
            specifiedType: const FullType(String)));
    }
    if (object.last_review_rating != null) {
      result
        ..add('last_review_rating')
        ..add(serializers.serialize(object.last_review_rating,
            specifiedType: const FullType(String)));
    }
    if (object.schedule_type != null) {
      result
        ..add('schedule_type')
        ..add(serializers.serialize(object.schedule_type,
            specifiedType: const FullType(String)));
    }
    if (object.open_close_busy != null) {
      result
        ..add('open_close_busy')
        ..add(serializers.serialize(object.open_close_busy,
            specifiedType: const FullType(String)));
    }
    if (object.partial_open_close_text != null) {
      result
        ..add('partial_open_close_text')
        ..add(serializers.serialize(object.partial_open_close_text,
            specifiedType: const FullType(String)));
    }
    if (object.new_email != null) {
      result
        ..add('new_email')
        ..add(serializers.serialize(object.new_email,
            specifiedType: const FullType(String)));
    }
    if (object.email_verification_token != null) {
      result
        ..add('email_verification_token')
        ..add(serializers.serialize(object.email_verification_token,
            specifiedType: const FullType(String)));
    }
    if (object.commission_type != null) {
      result
        ..add('commission_type')
        ..add(serializers.serialize(object.commission_type,
            specifiedType: const FullType(String)));
    }
    if (object.commission_value != null) {
      result
        ..add('commission_value')
        ..add(serializers.serialize(object.commission_value,
            specifiedType: const FullType(String)));
    }
    if (object.is_deleted != null) {
      result
        ..add('is_deleted')
        ..add(serializers.serialize(object.is_deleted,
            specifiedType: const FullType(String)));
    }
    if (object.verification_status != null) {
      result
        ..add('verification_status')
        ..add(serializers.serialize(object.verification_status,
            specifiedType: const FullType(String)));
    }
    if (object.seo_fields != null) {
      result
        ..add('seo_fields')
        ..add(serializers.serialize(object.seo_fields,
            specifiedType: const FullType(String)));
    }
    if (object.storepage_slug != null) {
      result
        ..add('storepage_slug')
        ..add(serializers.serialize(object.storepage_slug,
            specifiedType: const FullType(String)));
    }
    if (object.stripe_connect_currency != null) {
      result
        ..add('stripe_connect_currency')
        ..add(serializers.serialize(object.stripe_connect_currency,
            specifiedType: const FullType(String)));
    }
    if (object.stripe_connect_country != null) {
      result
        ..add('stripe_connect_country')
        ..add(serializers.serialize(object.stripe_connect_country,
            specifiedType: const FullType(String)));
    }
    if (object.delivery_charges != null) {
      result
        ..add('delivery_charges')
        ..add(serializers.serialize(object.delivery_charges,
            specifiedType: const FullType(String)));
    }
    if (object.enable_merchant_delivery_charges != null) {
      result
        ..add('enable_merchant_delivery_charges')
        ..add(serializers.serialize(object.enable_merchant_delivery_charges,
            specifiedType: const FullType(String)));
    }
    if (object.dynamic_delivery_charges != null) {
      result
        ..add('dynamic_delivery_charges')
        ..add(serializers.serialize(object.dynamic_delivery_charges,
            specifiedType: const FullType(String)));
    }
    if (object.template_name != null) {
      result
        ..add('template_name')
        ..add(serializers.serialize(object.template_name,
            specifiedType: const FullType(String)));
    }
    if (object.order_Details != null) {
      result
        ..add('order_Details')
        ..add(serializers.serialize(object.order_Details,
            specifiedType: const FullType(String)));
    }
    if (object.has_categories != null) {
      result
        ..add('has_categories')
        ..add(serializers.serialize(object.has_categories,
            specifiedType: const FullType(String)));
    }
    if (object.sponsorship_is_active != null) {
      result
        ..add('sponsorship_is_active')
        ..add(serializers.serialize(object.sponsorship_is_active,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Merchant deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MerchantBuilder();

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
        case 'merchant_key':
          result.merchant_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_key':
          result.user_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'provider_key':
          result.provider_key.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'earnings':
          result.earnings = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_verified':
          result.is_verified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_address':
          result.company_address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_address':
          result.display_address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'business_category_id':
          result.business_category_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phone_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country_code':
          result.country_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_name':
          result.first_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_name':
          result.last_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_name':
          result.store_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_Name':
          result.display_Name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumb_url':
          result.thumb_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumb_list':
          result.thumb_list = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'banner_image':
          result.banner_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile_banner_image':
          result.mobile_banner_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'device_token':
          result.device_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country_id':
          result.country_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state_id':
          result.state_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city_id':
          result.city_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serving_distance':
          result.serving_distance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_blocked':
          result.is_blocked = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creation_datetime':
          result.creation_datetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'update_datetime':
          result.update_datetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tookan_team_id':
          result.tookan_team_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_rating':
          result.store_rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_ratings_count':
          result.total_ratings_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_review_count':
          result.total_review_count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_ratings_sum':
          result.total_ratings_sum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_review_rating':
          result.last_review_rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'schedule_type':
          result.schedule_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'open_close_busy':
          result.open_close_busy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'partial_open_close_text':
          result.partial_open_close_text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'new_email':
          result.new_email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email_verification_token':
          result.email_verification_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commission_type':
          result.commission_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commission_value':
          result.commission_value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verification_status':
          result.verification_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seo_fields':
          result.seo_fields = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storepage_slug':
          result.storepage_slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stripe_connect_currency':
          result.stripe_connect_currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stripe_connect_country':
          result.stripe_connect_country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivery_charges':
          result.delivery_charges = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'enable_merchant_delivery_charges':
          result.enable_merchant_delivery_charges = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dynamic_delivery_charges':
          result.dynamic_delivery_charges = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'template_name':
          result.template_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_Details':
          result.order_Details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_categories':
          result.has_categories = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sponsorship_is_active':
          result.sponsorship_is_active = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Merchant extends Merchant {
  @override
  final int id;
  @override
  final String merchant_key;
  @override
  final String user_key;
  @override
  final BuiltList<String> provider_key;
  @override
  final String earnings;
  @override
  final String is_verified;
  @override
  final String company_address;
  @override
  final String display_address;
  @override
  final String business_category_id;
  @override
  final String phone_number;
  @override
  final String country_code;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String store_name;
  @override
  final String display_Name;
  @override
  final String description;
  @override
  final String logo;
  @override
  final String thumb_url;
  @override
  final String thumb_list;
  @override
  final String banner_image;
  @override
  final String mobile_banner_image;
  @override
  final String device_token;
  @override
  final String country_id;
  @override
  final String state_id;
  @override
  final String city_id;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String serving_distance;
  @override
  final String is_active;
  @override
  final String is_blocked;
  @override
  final String creation_datetime;
  @override
  final String update_datetime;
  @override
  final String tookan_team_id;
  @override
  final String store_rating;
  @override
  final String total_ratings_count;
  @override
  final String total_review_count;
  @override
  final String total_ratings_sum;
  @override
  final String last_review_rating;
  @override
  final String schedule_type;
  @override
  final String open_close_busy;
  @override
  final String partial_open_close_text;
  @override
  final String new_email;
  @override
  final String email_verification_token;
  @override
  final String commission_type;
  @override
  final String commission_value;
  @override
  final String is_deleted;
  @override
  final String verification_status;
  @override
  final String seo_fields;
  @override
  final String storepage_slug;
  @override
  final String stripe_connect_currency;
  @override
  final String stripe_connect_country;
  @override
  final String delivery_charges;
  @override
  final String enable_merchant_delivery_charges;
  @override
  final String dynamic_delivery_charges;
  @override
  final String template_name;
  @override
  final String order_Details;
  @override
  final String has_categories;
  @override
  final String sponsorship_is_active;

  factory _$Merchant([void Function(MerchantBuilder) updates]) =>
      (new MerchantBuilder()..update(updates)).build();

  _$Merchant._(
      {this.id,
      this.merchant_key,
      this.user_key,
      this.provider_key,
      this.earnings,
      this.is_verified,
      this.company_address,
      this.display_address,
      this.business_category_id,
      this.phone_number,
      this.country_code,
      this.first_name,
      this.last_name,
      this.store_name,
      this.display_Name,
      this.description,
      this.logo,
      this.thumb_url,
      this.thumb_list,
      this.banner_image,
      this.mobile_banner_image,
      this.device_token,
      this.country_id,
      this.state_id,
      this.city_id,
      this.latitude,
      this.longitude,
      this.serving_distance,
      this.is_active,
      this.is_blocked,
      this.creation_datetime,
      this.update_datetime,
      this.tookan_team_id,
      this.store_rating,
      this.total_ratings_count,
      this.total_review_count,
      this.total_ratings_sum,
      this.last_review_rating,
      this.schedule_type,
      this.open_close_busy,
      this.partial_open_close_text,
      this.new_email,
      this.email_verification_token,
      this.commission_type,
      this.commission_value,
      this.is_deleted,
      this.verification_status,
      this.seo_fields,
      this.storepage_slug,
      this.stripe_connect_currency,
      this.stripe_connect_country,
      this.delivery_charges,
      this.enable_merchant_delivery_charges,
      this.dynamic_delivery_charges,
      this.template_name,
      this.order_Details,
      this.has_categories,
      this.sponsorship_is_active})
      : super._();

  @override
  Merchant rebuild(void Function(MerchantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MerchantBuilder toBuilder() => new MerchantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Merchant &&
        id == other.id &&
        merchant_key == other.merchant_key &&
        user_key == other.user_key &&
        provider_key == other.provider_key &&
        earnings == other.earnings &&
        is_verified == other.is_verified &&
        company_address == other.company_address &&
        display_address == other.display_address &&
        business_category_id == other.business_category_id &&
        phone_number == other.phone_number &&
        country_code == other.country_code &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        store_name == other.store_name &&
        display_Name == other.display_Name &&
        description == other.description &&
        logo == other.logo &&
        thumb_url == other.thumb_url &&
        thumb_list == other.thumb_list &&
        banner_image == other.banner_image &&
        mobile_banner_image == other.mobile_banner_image &&
        device_token == other.device_token &&
        country_id == other.country_id &&
        state_id == other.state_id &&
        city_id == other.city_id &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        serving_distance == other.serving_distance &&
        is_active == other.is_active &&
        is_blocked == other.is_blocked &&
        creation_datetime == other.creation_datetime &&
        update_datetime == other.update_datetime &&
        tookan_team_id == other.tookan_team_id &&
        store_rating == other.store_rating &&
        total_ratings_count == other.total_ratings_count &&
        total_review_count == other.total_review_count &&
        total_ratings_sum == other.total_ratings_sum &&
        last_review_rating == other.last_review_rating &&
        schedule_type == other.schedule_type &&
        open_close_busy == other.open_close_busy &&
        partial_open_close_text == other.partial_open_close_text &&
        new_email == other.new_email &&
        email_verification_token == other.email_verification_token &&
        commission_type == other.commission_type &&
        commission_value == other.commission_value &&
        is_deleted == other.is_deleted &&
        verification_status == other.verification_status &&
        seo_fields == other.seo_fields &&
        storepage_slug == other.storepage_slug &&
        stripe_connect_currency == other.stripe_connect_currency &&
        stripe_connect_country == other.stripe_connect_country &&
        delivery_charges == other.delivery_charges &&
        enable_merchant_delivery_charges ==
            other.enable_merchant_delivery_charges &&
        dynamic_delivery_charges == other.dynamic_delivery_charges &&
        template_name == other.template_name &&
        order_Details == other.order_Details &&
        has_categories == other.has_categories &&
        sponsorship_is_active == other.sponsorship_is_active;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), merchant_key.hashCode), user_key.hashCode), provider_key.hashCode), earnings.hashCode), is_verified.hashCode), company_address.hashCode), display_address.hashCode), business_category_id.hashCode), phone_number.hashCode), country_code.hashCode), first_name.hashCode), last_name.hashCode), store_name.hashCode), display_Name.hashCode), description.hashCode), logo.hashCode), thumb_url.hashCode), thumb_list.hashCode), banner_image.hashCode), mobile_banner_image.hashCode), device_token.hashCode), country_id.hashCode), state_id.hashCode), city_id.hashCode), latitude.hashCode), longitude.hashCode), serving_distance.hashCode), is_active.hashCode), is_blocked.hashCode), creation_datetime.hashCode), update_datetime.hashCode), tookan_team_id.hashCode), store_rating.hashCode), total_ratings_count.hashCode), total_review_count.hashCode), total_ratings_sum.hashCode), last_review_rating.hashCode), schedule_type.hashCode),
                                                                                open_close_busy.hashCode),
                                                                            partial_open_close_text.hashCode),
                                                                        new_email.hashCode),
                                                                    email_verification_token.hashCode),
                                                                commission_type.hashCode),
                                                            commission_value.hashCode),
                                                        is_deleted.hashCode),
                                                    verification_status.hashCode),
                                                seo_fields.hashCode),
                                            storepage_slug.hashCode),
                                        stripe_connect_currency.hashCode),
                                    stripe_connect_country.hashCode),
                                delivery_charges.hashCode),
                            enable_merchant_delivery_charges.hashCode),
                        dynamic_delivery_charges.hashCode),
                    template_name.hashCode),
                order_Details.hashCode),
            has_categories.hashCode),
        sponsorship_is_active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Merchant')
          ..add('id', id)
          ..add('merchant_key', merchant_key)
          ..add('user_key', user_key)
          ..add('provider_key', provider_key)
          ..add('earnings', earnings)
          ..add('is_verified', is_verified)
          ..add('company_address', company_address)
          ..add('display_address', display_address)
          ..add('business_category_id', business_category_id)
          ..add('phone_number', phone_number)
          ..add('country_code', country_code)
          ..add('first_name', first_name)
          ..add('last_name', last_name)
          ..add('store_name', store_name)
          ..add('display_Name', display_Name)
          ..add('description', description)
          ..add('logo', logo)
          ..add('thumb_url', thumb_url)
          ..add('thumb_list', thumb_list)
          ..add('banner_image', banner_image)
          ..add('mobile_banner_image', mobile_banner_image)
          ..add('device_token', device_token)
          ..add('country_id', country_id)
          ..add('state_id', state_id)
          ..add('city_id', city_id)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('serving_distance', serving_distance)
          ..add('is_active', is_active)
          ..add('is_blocked', is_blocked)
          ..add('creation_datetime', creation_datetime)
          ..add('update_datetime', update_datetime)
          ..add('tookan_team_id', tookan_team_id)
          ..add('store_rating', store_rating)
          ..add('total_ratings_count', total_ratings_count)
          ..add('total_review_count', total_review_count)
          ..add('total_ratings_sum', total_ratings_sum)
          ..add('last_review_rating', last_review_rating)
          ..add('schedule_type', schedule_type)
          ..add('open_close_busy', open_close_busy)
          ..add('partial_open_close_text', partial_open_close_text)
          ..add('new_email', new_email)
          ..add('email_verification_token', email_verification_token)
          ..add('commission_type', commission_type)
          ..add('commission_value', commission_value)
          ..add('is_deleted', is_deleted)
          ..add('verification_status', verification_status)
          ..add('seo_fields', seo_fields)
          ..add('storepage_slug', storepage_slug)
          ..add('stripe_connect_currency', stripe_connect_currency)
          ..add('stripe_connect_country', stripe_connect_country)
          ..add('delivery_charges', delivery_charges)
          ..add('enable_merchant_delivery_charges',
              enable_merchant_delivery_charges)
          ..add('dynamic_delivery_charges', dynamic_delivery_charges)
          ..add('template_name', template_name)
          ..add('order_Details', order_Details)
          ..add('has_categories', has_categories)
          ..add('sponsorship_is_active', sponsorship_is_active))
        .toString();
  }
}

class MerchantBuilder implements Builder<Merchant, MerchantBuilder> {
  _$Merchant _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _merchant_key;
  String get merchant_key => _$this._merchant_key;
  set merchant_key(String merchant_key) => _$this._merchant_key = merchant_key;

  String _user_key;
  String get user_key => _$this._user_key;
  set user_key(String user_key) => _$this._user_key = user_key;

  ListBuilder<String> _provider_key;
  ListBuilder<String> get provider_key =>
      _$this._provider_key ??= new ListBuilder<String>();
  set provider_key(ListBuilder<String> provider_key) =>
      _$this._provider_key = provider_key;

  String _earnings;
  String get earnings => _$this._earnings;
  set earnings(String earnings) => _$this._earnings = earnings;

  String _is_verified;
  String get is_verified => _$this._is_verified;
  set is_verified(String is_verified) => _$this._is_verified = is_verified;

  String _company_address;
  String get company_address => _$this._company_address;
  set company_address(String company_address) =>
      _$this._company_address = company_address;

  String _display_address;
  String get display_address => _$this._display_address;
  set display_address(String display_address) =>
      _$this._display_address = display_address;

  String _business_category_id;
  String get business_category_id => _$this._business_category_id;
  set business_category_id(String business_category_id) =>
      _$this._business_category_id = business_category_id;

  String _phone_number;
  String get phone_number => _$this._phone_number;
  set phone_number(String phone_number) => _$this._phone_number = phone_number;

  String _country_code;
  String get country_code => _$this._country_code;
  set country_code(String country_code) => _$this._country_code = country_code;

  String _first_name;
  String get first_name => _$this._first_name;
  set first_name(String first_name) => _$this._first_name = first_name;

  String _last_name;
  String get last_name => _$this._last_name;
  set last_name(String last_name) => _$this._last_name = last_name;

  String _store_name;
  String get store_name => _$this._store_name;
  set store_name(String store_name) => _$this._store_name = store_name;

  String _display_Name;
  String get display_Name => _$this._display_Name;
  set display_Name(String display_Name) => _$this._display_Name = display_Name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  String _thumb_url;
  String get thumb_url => _$this._thumb_url;
  set thumb_url(String thumb_url) => _$this._thumb_url = thumb_url;

  String _thumb_list;
  String get thumb_list => _$this._thumb_list;
  set thumb_list(String thumb_list) => _$this._thumb_list = thumb_list;

  String _banner_image;
  String get banner_image => _$this._banner_image;
  set banner_image(String banner_image) => _$this._banner_image = banner_image;

  String _mobile_banner_image;
  String get mobile_banner_image => _$this._mobile_banner_image;
  set mobile_banner_image(String mobile_banner_image) =>
      _$this._mobile_banner_image = mobile_banner_image;

  String _device_token;
  String get device_token => _$this._device_token;
  set device_token(String device_token) => _$this._device_token = device_token;

  String _country_id;
  String get country_id => _$this._country_id;
  set country_id(String country_id) => _$this._country_id = country_id;

  String _state_id;
  String get state_id => _$this._state_id;
  set state_id(String state_id) => _$this._state_id = state_id;

  String _city_id;
  String get city_id => _$this._city_id;
  set city_id(String city_id) => _$this._city_id = city_id;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _serving_distance;
  String get serving_distance => _$this._serving_distance;
  set serving_distance(String serving_distance) =>
      _$this._serving_distance = serving_distance;

  String _is_active;
  String get is_active => _$this._is_active;
  set is_active(String is_active) => _$this._is_active = is_active;

  String _is_blocked;
  String get is_blocked => _$this._is_blocked;
  set is_blocked(String is_blocked) => _$this._is_blocked = is_blocked;

  String _creation_datetime;
  String get creation_datetime => _$this._creation_datetime;
  set creation_datetime(String creation_datetime) =>
      _$this._creation_datetime = creation_datetime;

  String _update_datetime;
  String get update_datetime => _$this._update_datetime;
  set update_datetime(String update_datetime) =>
      _$this._update_datetime = update_datetime;

  String _tookan_team_id;
  String get tookan_team_id => _$this._tookan_team_id;
  set tookan_team_id(String tookan_team_id) =>
      _$this._tookan_team_id = tookan_team_id;

  String _store_rating;
  String get store_rating => _$this._store_rating;
  set store_rating(String store_rating) => _$this._store_rating = store_rating;

  String _total_ratings_count;
  String get total_ratings_count => _$this._total_ratings_count;
  set total_ratings_count(String total_ratings_count) =>
      _$this._total_ratings_count = total_ratings_count;

  String _total_review_count;
  String get total_review_count => _$this._total_review_count;
  set total_review_count(String total_review_count) =>
      _$this._total_review_count = total_review_count;

  String _total_ratings_sum;
  String get total_ratings_sum => _$this._total_ratings_sum;
  set total_ratings_sum(String total_ratings_sum) =>
      _$this._total_ratings_sum = total_ratings_sum;

  String _last_review_rating;
  String get last_review_rating => _$this._last_review_rating;
  set last_review_rating(String last_review_rating) =>
      _$this._last_review_rating = last_review_rating;

  String _schedule_type;
  String get schedule_type => _$this._schedule_type;
  set schedule_type(String schedule_type) =>
      _$this._schedule_type = schedule_type;

  String _open_close_busy;
  String get open_close_busy => _$this._open_close_busy;
  set open_close_busy(String open_close_busy) =>
      _$this._open_close_busy = open_close_busy;

  String _partial_open_close_text;
  String get partial_open_close_text => _$this._partial_open_close_text;
  set partial_open_close_text(String partial_open_close_text) =>
      _$this._partial_open_close_text = partial_open_close_text;

  String _new_email;
  String get new_email => _$this._new_email;
  set new_email(String new_email) => _$this._new_email = new_email;

  String _email_verification_token;
  String get email_verification_token => _$this._email_verification_token;
  set email_verification_token(String email_verification_token) =>
      _$this._email_verification_token = email_verification_token;

  String _commission_type;
  String get commission_type => _$this._commission_type;
  set commission_type(String commission_type) =>
      _$this._commission_type = commission_type;

  String _commission_value;
  String get commission_value => _$this._commission_value;
  set commission_value(String commission_value) =>
      _$this._commission_value = commission_value;

  String _is_deleted;
  String get is_deleted => _$this._is_deleted;
  set is_deleted(String is_deleted) => _$this._is_deleted = is_deleted;

  String _verification_status;
  String get verification_status => _$this._verification_status;
  set verification_status(String verification_status) =>
      _$this._verification_status = verification_status;

  String _seo_fields;
  String get seo_fields => _$this._seo_fields;
  set seo_fields(String seo_fields) => _$this._seo_fields = seo_fields;

  String _storepage_slug;
  String get storepage_slug => _$this._storepage_slug;
  set storepage_slug(String storepage_slug) =>
      _$this._storepage_slug = storepage_slug;

  String _stripe_connect_currency;
  String get stripe_connect_currency => _$this._stripe_connect_currency;
  set stripe_connect_currency(String stripe_connect_currency) =>
      _$this._stripe_connect_currency = stripe_connect_currency;

  String _stripe_connect_country;
  String get stripe_connect_country => _$this._stripe_connect_country;
  set stripe_connect_country(String stripe_connect_country) =>
      _$this._stripe_connect_country = stripe_connect_country;

  String _delivery_charges;
  String get delivery_charges => _$this._delivery_charges;
  set delivery_charges(String delivery_charges) =>
      _$this._delivery_charges = delivery_charges;

  String _enable_merchant_delivery_charges;
  String get enable_merchant_delivery_charges =>
      _$this._enable_merchant_delivery_charges;
  set enable_merchant_delivery_charges(
          String enable_merchant_delivery_charges) =>
      _$this._enable_merchant_delivery_charges =
          enable_merchant_delivery_charges;

  String _dynamic_delivery_charges;
  String get dynamic_delivery_charges => _$this._dynamic_delivery_charges;
  set dynamic_delivery_charges(String dynamic_delivery_charges) =>
      _$this._dynamic_delivery_charges = dynamic_delivery_charges;

  String _template_name;
  String get template_name => _$this._template_name;
  set template_name(String template_name) =>
      _$this._template_name = template_name;

  String _order_Details;
  String get order_Details => _$this._order_Details;
  set order_Details(String order_Details) =>
      _$this._order_Details = order_Details;

  String _has_categories;
  String get has_categories => _$this._has_categories;
  set has_categories(String has_categories) =>
      _$this._has_categories = has_categories;

  String _sponsorship_is_active;
  String get sponsorship_is_active => _$this._sponsorship_is_active;
  set sponsorship_is_active(String sponsorship_is_active) =>
      _$this._sponsorship_is_active = sponsorship_is_active;

  MerchantBuilder();

  MerchantBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _merchant_key = _$v.merchant_key;
      _user_key = _$v.user_key;
      _provider_key = _$v.provider_key?.toBuilder();
      _earnings = _$v.earnings;
      _is_verified = _$v.is_verified;
      _company_address = _$v.company_address;
      _display_address = _$v.display_address;
      _business_category_id = _$v.business_category_id;
      _phone_number = _$v.phone_number;
      _country_code = _$v.country_code;
      _first_name = _$v.first_name;
      _last_name = _$v.last_name;
      _store_name = _$v.store_name;
      _display_Name = _$v.display_Name;
      _description = _$v.description;
      _logo = _$v.logo;
      _thumb_url = _$v.thumb_url;
      _thumb_list = _$v.thumb_list;
      _banner_image = _$v.banner_image;
      _mobile_banner_image = _$v.mobile_banner_image;
      _device_token = _$v.device_token;
      _country_id = _$v.country_id;
      _state_id = _$v.state_id;
      _city_id = _$v.city_id;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _serving_distance = _$v.serving_distance;
      _is_active = _$v.is_active;
      _is_blocked = _$v.is_blocked;
      _creation_datetime = _$v.creation_datetime;
      _update_datetime = _$v.update_datetime;
      _tookan_team_id = _$v.tookan_team_id;
      _store_rating = _$v.store_rating;
      _total_ratings_count = _$v.total_ratings_count;
      _total_review_count = _$v.total_review_count;
      _total_ratings_sum = _$v.total_ratings_sum;
      _last_review_rating = _$v.last_review_rating;
      _schedule_type = _$v.schedule_type;
      _open_close_busy = _$v.open_close_busy;
      _partial_open_close_text = _$v.partial_open_close_text;
      _new_email = _$v.new_email;
      _email_verification_token = _$v.email_verification_token;
      _commission_type = _$v.commission_type;
      _commission_value = _$v.commission_value;
      _is_deleted = _$v.is_deleted;
      _verification_status = _$v.verification_status;
      _seo_fields = _$v.seo_fields;
      _storepage_slug = _$v.storepage_slug;
      _stripe_connect_currency = _$v.stripe_connect_currency;
      _stripe_connect_country = _$v.stripe_connect_country;
      _delivery_charges = _$v.delivery_charges;
      _enable_merchant_delivery_charges = _$v.enable_merchant_delivery_charges;
      _dynamic_delivery_charges = _$v.dynamic_delivery_charges;
      _template_name = _$v.template_name;
      _order_Details = _$v.order_Details;
      _has_categories = _$v.has_categories;
      _sponsorship_is_active = _$v.sponsorship_is_active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Merchant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Merchant;
  }

  @override
  void update(void Function(MerchantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Merchant build() {
    _$Merchant _$result;
    try {
      _$result = _$v ??
          new _$Merchant._(
              id: id,
              merchant_key: merchant_key,
              user_key: user_key,
              provider_key: _provider_key?.build(),
              earnings: earnings,
              is_verified: is_verified,
              company_address: company_address,
              display_address: display_address,
              business_category_id: business_category_id,
              phone_number: phone_number,
              country_code: country_code,
              first_name: first_name,
              last_name: last_name,
              store_name: store_name,
              display_Name: display_Name,
              description: description,
              logo: logo,
              thumb_url: thumb_url,
              thumb_list: thumb_list,
              banner_image: banner_image,
              mobile_banner_image: mobile_banner_image,
              device_token: device_token,
              country_id: country_id,
              state_id: state_id,
              city_id: city_id,
              latitude: latitude,
              longitude: longitude,
              serving_distance: serving_distance,
              is_active: is_active,
              is_blocked: is_blocked,
              creation_datetime: creation_datetime,
              update_datetime: update_datetime,
              tookan_team_id: tookan_team_id,
              store_rating: store_rating,
              total_ratings_count: total_ratings_count,
              total_review_count: total_review_count,
              total_ratings_sum: total_ratings_sum,
              last_review_rating: last_review_rating,
              schedule_type: schedule_type,
              open_close_busy: open_close_busy,
              partial_open_close_text: partial_open_close_text,
              new_email: new_email,
              email_verification_token: email_verification_token,
              commission_type: commission_type,
              commission_value: commission_value,
              is_deleted: is_deleted,
              verification_status: verification_status,
              seo_fields: seo_fields,
              storepage_slug: storepage_slug,
              stripe_connect_currency: stripe_connect_currency,
              stripe_connect_country: stripe_connect_country,
              delivery_charges: delivery_charges,
              enable_merchant_delivery_charges:
                  enable_merchant_delivery_charges,
              dynamic_delivery_charges: dynamic_delivery_charges,
              template_name: template_name,
              order_Details: order_Details,
              has_categories: has_categories,
              sponsorship_is_active: sponsorship_is_active);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'provider_key';
        _provider_key?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Merchant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
