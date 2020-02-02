// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Order> _$orderSerializer = new _$OrderSerializer();

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable<Object> serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'order_id',
      serializers.serialize(object.order_id,
          specifiedType: const FullType(String)),
      'job_type',
      serializers.serialize(object.job_type,
          specifiedType: const FullType(String)),
      'business_type',
      serializers.serialize(object.business_type,
          specifiedType: const FullType(String)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType: const FullType(String)),
      'order_summary_collection',
      serializers.serialize(object.order_summary_collection,
          specifiedType: const FullType(String)),
      'description_json',
      serializers.serialize(object.description_json,
          specifiedType: const FullType(String)),
      'parent_category_id',
      serializers.serialize(object.parent_category_id,
          specifiedType: const FullType(String)),
      'is_enabled',
      serializers.serialize(object.is_enabled,
          specifiedType: const FullType(String)),
      'is_recurring_enabled',
      serializers.serialize(object.is_recurring_enabled,
          specifiedType: const FullType(String)),
      'is_side_order',
      serializers.serialize(object.is_side_order,
          specifiedType: const FullType(String)),
      'service_time',
      serializers.serialize(object.service_time,
          specifiedType: const FullType(String)),
      'available_quantity',
      serializers.serialize(object.available_quantity,
          specifiedType: const FullType(String)),
      'is_deleted',
      serializers.serialize(object.is_deleted,
          specifiedType: const FullType(String)),
      'cost_price',
      serializers.serialize(object.cost_price,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(String)),
      'unit_type',
      serializers.serialize(object.unit_type,
          specifiedType: const FullType(String)),
      'unit',
      serializers.serialize(object.unit, specifiedType: const FullType(String)),
      'steps_collection',
      serializers.serialize(object.steps_collection,
          specifiedType: const FullType(String)),
      'customer_id',
      serializers.serialize(object.customer_id,
          specifiedType: const FullType(String)),
      'customer_phone',
      serializers.serialize(object.customer_phone,
          specifiedType: const FullType(String)),
      'cart_id',
      serializers.serialize(object.cart_id,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(String)),
      'delivery_charge',
      serializers.serialize(object.delivery_charge,
          specifiedType: const FullType(String)),
      'currency_id',
      serializers.serialize(object.currency_id,
          specifiedType: const FullType(String)),
      'self_pickup',
      serializers.serialize(object.self_pickup,
          specifiedType: const FullType(String)),
      'store_id',
      serializers.serialize(object.store_id,
          specifiedType: const FullType(String)),
      'refunded_amount_optional',
      serializers.serialize(object.refunded_amount_optional,
          specifiedType: const FullType(String)),
      'accept_reject',
      serializers.serialize(object.accept_reject,
          specifiedType: const FullType(String)),
      'long_description_json',
      serializers.serialize(object.long_description_json,
          specifiedType: const FullType(String)),
      'customer',
      serializers.serialize(object.customer,
          specifiedType: const FullType(String)),
      'date_time',
      serializers.serialize(object.date_time,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'location_of_agent',
      serializers.serialize(object.location_of_agent,
          specifiedType: const FullType(String)),
      'is_scheduled',
      serializers.serialize(object.is_scheduled,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'eta',
      serializers.serialize(object.eta, specifiedType: const FullType(String)),
      'agent_assigned',
      serializers.serialize(object.agent_assigned,
          specifiedType: const FullType(String)),
      'follow_up_order_recommendations',
      serializers.serialize(object.follow_up_order_recommendations,
          specifiedType: const FullType(String)),
      'has_delivery',
      serializers.serialize(object.has_delivery,
          specifiedType: const FullType(String)),
      'has_pickup',
      serializers.serialize(object.has_pickup,
          specifiedType: const FullType(String)),
      'coupon_discount',
      serializers.serialize(object.coupon_discount,
          specifiedType: const FullType(String)),
      'job_pickup_phone',
      serializers.serialize(object.job_pickup_phone,
          specifiedType: const FullType(String)),
      'job_pickup_address',
      serializers.serialize(object.job_pickup_address,
          specifiedType: const FullType(String)),
      'return_enabled',
      serializers.serialize(object.return_enabled,
          specifiedType: const FullType(String)),
      'job_pickup_datetime',
      serializers.serialize(object.job_pickup_datetime,
          specifiedType: const FullType(String)),
      'job_delivery_datetime',
      serializers.serialize(object.job_delivery_datetime,
          specifiedType: const FullType(String)),
      'fleet_id',
      serializers.serialize(object.fleet_id,
          specifiedType: const FullType(String)),
      'marketplace_user_id_68757',
      serializers.serialize(object.marketplace_user_id_68757,
          specifiedType: const FullType(String)),
      'form_id',
      serializers.serialize(object.form_id,
          specifiedType: const FullType(String)),
      'transaction_id',
      serializers.serialize(object.transaction_id,
          specifiedType: const FullType(String)),
      'remaining_balance',
      serializers.serialize(object.remaining_balance,
          specifiedType: const FullType(String)),
      'tax',
      serializers.serialize(object.tax, specifiedType: const FullType(String)),
      'total_amount',
      serializers.serialize(object.total_amount,
          specifiedType: const FullType(String)),
      'order_amount',
      serializers.serialize(object.order_amount,
          specifiedType: const FullType(String)),
      'payment_type',
      serializers.serialize(object.payment_type,
          specifiedType: const FullType(String)),
      'merchant_email',
      serializers.serialize(object.merchant_email,
          specifiedType: const FullType(String)),
      'customer_rating',
      serializers.serialize(object.customer_rating,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

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
        case 'order_id':
          result.order_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_type':
          result.job_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'business_type':
          result.business_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'provider':
          result.provider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_summary_collection':
          result.order_summary_collection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description_json':
          result.description_json = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent_category_id':
          result.parent_category_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_enabled':
          result.is_enabled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_recurring_enabled':
          result.is_recurring_enabled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_side_order':
          result.is_side_order = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'service_time':
          result.service_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'available_quantity':
          result.available_quantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cost_price':
          result.cost_price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unit_type':
          result.unit_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'steps_collection':
          result.steps_collection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_id':
          result.customer_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_phone':
          result.customer_phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cart_id':
          result.cart_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivery_charge':
          result.delivery_charge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currency_id':
          result.currency_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'self_pickup':
          result.self_pickup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_id':
          result.store_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refunded_amount_optional':
          result.refunded_amount_optional = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accept_reject':
          result.accept_reject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'long_description_json':
          result.long_description_json = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer':
          result.customer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_time':
          result.date_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location_of_agent':
          result.location_of_agent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_scheduled':
          result.is_scheduled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'eta':
          result.eta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'agent_assigned':
          result.agent_assigned = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'follow_up_order_recommendations':
          result.follow_up_order_recommendations = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_delivery':
          result.has_delivery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_pickup':
          result.has_pickup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coupon_discount':
          result.coupon_discount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_pickup_phone':
          result.job_pickup_phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_pickup_address':
          result.job_pickup_address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'return_enabled':
          result.return_enabled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_pickup_datetime':
          result.job_pickup_datetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_delivery_datetime':
          result.job_delivery_datetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fleet_id':
          result.fleet_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'marketplace_user_id_68757':
          result.marketplace_user_id_68757 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'form_id':
          result.form_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transaction_id':
          result.transaction_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remaining_balance':
          result.remaining_balance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tax':
          result.tax = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_amount':
          result.total_amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_amount':
          result.order_amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payment_type':
          result.payment_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'merchant_email':
          result.merchant_email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_rating':
          result.customer_rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Order extends Order {
  @override
  final int id;
  @override
  final String order_id;
  @override
  final String job_type;
  @override
  final String business_type;
  @override
  final String provider;
  @override
  final String order_summary_collection;
  @override
  final String description_json;
  @override
  final String parent_category_id;
  @override
  final String is_enabled;
  @override
  final String is_recurring_enabled;
  @override
  final String is_side_order;
  @override
  final String service_time;
  @override
  final String available_quantity;
  @override
  final String is_deleted;
  @override
  final String cost_price;
  @override
  final String price;
  @override
  final String unit_type;
  @override
  final String unit;
  @override
  final String steps_collection;
  @override
  final String customer_id;
  @override
  final String customer_phone;
  @override
  final String cart_id;
  @override
  final String amount;
  @override
  final String delivery_charge;
  @override
  final String currency_id;
  @override
  final String self_pickup;
  @override
  final String store_id;
  @override
  final String refunded_amount_optional;
  @override
  final String accept_reject;
  @override
  final String long_description_json;
  @override
  final String customer;
  @override
  final String date_time;
  @override
  final String type;
  @override
  final String location_of_agent;
  @override
  final String is_scheduled;
  @override
  final String status;
  @override
  final String eta;
  @override
  final String agent_assigned;
  @override
  final String follow_up_order_recommendations;
  @override
  final String has_delivery;
  @override
  final String has_pickup;
  @override
  final String coupon_discount;
  @override
  final String job_pickup_phone;
  @override
  final String job_pickup_address;
  @override
  final String return_enabled;
  @override
  final String job_pickup_datetime;
  @override
  final String job_delivery_datetime;
  @override
  final String fleet_id;
  @override
  final String marketplace_user_id_68757;
  @override
  final String form_id;
  @override
  final String transaction_id;
  @override
  final String remaining_balance;
  @override
  final String tax;
  @override
  final String total_amount;
  @override
  final String order_amount;
  @override
  final String payment_type;
  @override
  final String merchant_email;
  @override
  final String customer_rating;

  factory _$Order([void Function(OrderBuilder) updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {this.id,
      this.order_id,
      this.job_type,
      this.business_type,
      this.provider,
      this.order_summary_collection,
      this.description_json,
      this.parent_category_id,
      this.is_enabled,
      this.is_recurring_enabled,
      this.is_side_order,
      this.service_time,
      this.available_quantity,
      this.is_deleted,
      this.cost_price,
      this.price,
      this.unit_type,
      this.unit,
      this.steps_collection,
      this.customer_id,
      this.customer_phone,
      this.cart_id,
      this.amount,
      this.delivery_charge,
      this.currency_id,
      this.self_pickup,
      this.store_id,
      this.refunded_amount_optional,
      this.accept_reject,
      this.long_description_json,
      this.customer,
      this.date_time,
      this.type,
      this.location_of_agent,
      this.is_scheduled,
      this.status,
      this.eta,
      this.agent_assigned,
      this.follow_up_order_recommendations,
      this.has_delivery,
      this.has_pickup,
      this.coupon_discount,
      this.job_pickup_phone,
      this.job_pickup_address,
      this.return_enabled,
      this.job_pickup_datetime,
      this.job_delivery_datetime,
      this.fleet_id,
      this.marketplace_user_id_68757,
      this.form_id,
      this.transaction_id,
      this.remaining_balance,
      this.tax,
      this.total_amount,
      this.order_amount,
      this.payment_type,
      this.merchant_email,
      this.customer_rating})
      : super._() {
    if (order_id == null) {
      throw new BuiltValueNullFieldError('Order', 'order_id');
    }
    if (job_type == null) {
      throw new BuiltValueNullFieldError('Order', 'job_type');
    }
    if (business_type == null) {
      throw new BuiltValueNullFieldError('Order', 'business_type');
    }
    if (provider == null) {
      throw new BuiltValueNullFieldError('Order', 'provider');
    }
    if (order_summary_collection == null) {
      throw new BuiltValueNullFieldError('Order', 'order_summary_collection');
    }
    if (description_json == null) {
      throw new BuiltValueNullFieldError('Order', 'description_json');
    }
    if (parent_category_id == null) {
      throw new BuiltValueNullFieldError('Order', 'parent_category_id');
    }
    if (is_enabled == null) {
      throw new BuiltValueNullFieldError('Order', 'is_enabled');
    }
    if (is_recurring_enabled == null) {
      throw new BuiltValueNullFieldError('Order', 'is_recurring_enabled');
    }
    if (is_side_order == null) {
      throw new BuiltValueNullFieldError('Order', 'is_side_order');
    }
    if (service_time == null) {
      throw new BuiltValueNullFieldError('Order', 'service_time');
    }
    if (available_quantity == null) {
      throw new BuiltValueNullFieldError('Order', 'available_quantity');
    }
    if (is_deleted == null) {
      throw new BuiltValueNullFieldError('Order', 'is_deleted');
    }
    if (cost_price == null) {
      throw new BuiltValueNullFieldError('Order', 'cost_price');
    }
    if (price == null) {
      throw new BuiltValueNullFieldError('Order', 'price');
    }
    if (unit_type == null) {
      throw new BuiltValueNullFieldError('Order', 'unit_type');
    }
    if (unit == null) {
      throw new BuiltValueNullFieldError('Order', 'unit');
    }
    if (steps_collection == null) {
      throw new BuiltValueNullFieldError('Order', 'steps_collection');
    }
    if (customer_id == null) {
      throw new BuiltValueNullFieldError('Order', 'customer_id');
    }
    if (customer_phone == null) {
      throw new BuiltValueNullFieldError('Order', 'customer_phone');
    }
    if (cart_id == null) {
      throw new BuiltValueNullFieldError('Order', 'cart_id');
    }
    if (amount == null) {
      throw new BuiltValueNullFieldError('Order', 'amount');
    }
    if (delivery_charge == null) {
      throw new BuiltValueNullFieldError('Order', 'delivery_charge');
    }
    if (currency_id == null) {
      throw new BuiltValueNullFieldError('Order', 'currency_id');
    }
    if (self_pickup == null) {
      throw new BuiltValueNullFieldError('Order', 'self_pickup');
    }
    if (store_id == null) {
      throw new BuiltValueNullFieldError('Order', 'store_id');
    }
    if (refunded_amount_optional == null) {
      throw new BuiltValueNullFieldError('Order', 'refunded_amount_optional');
    }
    if (accept_reject == null) {
      throw new BuiltValueNullFieldError('Order', 'accept_reject');
    }
    if (long_description_json == null) {
      throw new BuiltValueNullFieldError('Order', 'long_description_json');
    }
    if (customer == null) {
      throw new BuiltValueNullFieldError('Order', 'customer');
    }
    if (date_time == null) {
      throw new BuiltValueNullFieldError('Order', 'date_time');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Order', 'type');
    }
    if (location_of_agent == null) {
      throw new BuiltValueNullFieldError('Order', 'location_of_agent');
    }
    if (is_scheduled == null) {
      throw new BuiltValueNullFieldError('Order', 'is_scheduled');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Order', 'status');
    }
    if (eta == null) {
      throw new BuiltValueNullFieldError('Order', 'eta');
    }
    if (agent_assigned == null) {
      throw new BuiltValueNullFieldError('Order', 'agent_assigned');
    }
    if (follow_up_order_recommendations == null) {
      throw new BuiltValueNullFieldError(
          'Order', 'follow_up_order_recommendations');
    }
    if (has_delivery == null) {
      throw new BuiltValueNullFieldError('Order', 'has_delivery');
    }
    if (has_pickup == null) {
      throw new BuiltValueNullFieldError('Order', 'has_pickup');
    }
    if (coupon_discount == null) {
      throw new BuiltValueNullFieldError('Order', 'coupon_discount');
    }
    if (job_pickup_phone == null) {
      throw new BuiltValueNullFieldError('Order', 'job_pickup_phone');
    }
    if (job_pickup_address == null) {
      throw new BuiltValueNullFieldError('Order', 'job_pickup_address');
    }
    if (return_enabled == null) {
      throw new BuiltValueNullFieldError('Order', 'return_enabled');
    }
    if (job_pickup_datetime == null) {
      throw new BuiltValueNullFieldError('Order', 'job_pickup_datetime');
    }
    if (job_delivery_datetime == null) {
      throw new BuiltValueNullFieldError('Order', 'job_delivery_datetime');
    }
    if (fleet_id == null) {
      throw new BuiltValueNullFieldError('Order', 'fleet_id');
    }
    if (marketplace_user_id_68757 == null) {
      throw new BuiltValueNullFieldError('Order', 'marketplace_user_id_68757');
    }
    if (form_id == null) {
      throw new BuiltValueNullFieldError('Order', 'form_id');
    }
    if (transaction_id == null) {
      throw new BuiltValueNullFieldError('Order', 'transaction_id');
    }
    if (remaining_balance == null) {
      throw new BuiltValueNullFieldError('Order', 'remaining_balance');
    }
    if (tax == null) {
      throw new BuiltValueNullFieldError('Order', 'tax');
    }
    if (total_amount == null) {
      throw new BuiltValueNullFieldError('Order', 'total_amount');
    }
    if (order_amount == null) {
      throw new BuiltValueNullFieldError('Order', 'order_amount');
    }
    if (payment_type == null) {
      throw new BuiltValueNullFieldError('Order', 'payment_type');
    }
    if (merchant_email == null) {
      throw new BuiltValueNullFieldError('Order', 'merchant_email');
    }
    if (customer_rating == null) {
      throw new BuiltValueNullFieldError('Order', 'customer_rating');
    }
  }

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        order_id == other.order_id &&
        job_type == other.job_type &&
        business_type == other.business_type &&
        provider == other.provider &&
        order_summary_collection == other.order_summary_collection &&
        description_json == other.description_json &&
        parent_category_id == other.parent_category_id &&
        is_enabled == other.is_enabled &&
        is_recurring_enabled == other.is_recurring_enabled &&
        is_side_order == other.is_side_order &&
        service_time == other.service_time &&
        available_quantity == other.available_quantity &&
        is_deleted == other.is_deleted &&
        cost_price == other.cost_price &&
        price == other.price &&
        unit_type == other.unit_type &&
        unit == other.unit &&
        steps_collection == other.steps_collection &&
        customer_id == other.customer_id &&
        customer_phone == other.customer_phone &&
        cart_id == other.cart_id &&
        amount == other.amount &&
        delivery_charge == other.delivery_charge &&
        currency_id == other.currency_id &&
        self_pickup == other.self_pickup &&
        store_id == other.store_id &&
        refunded_amount_optional == other.refunded_amount_optional &&
        accept_reject == other.accept_reject &&
        long_description_json == other.long_description_json &&
        customer == other.customer &&
        date_time == other.date_time &&
        type == other.type &&
        location_of_agent == other.location_of_agent &&
        is_scheduled == other.is_scheduled &&
        status == other.status &&
        eta == other.eta &&
        agent_assigned == other.agent_assigned &&
        follow_up_order_recommendations ==
            other.follow_up_order_recommendations &&
        has_delivery == other.has_delivery &&
        has_pickup == other.has_pickup &&
        coupon_discount == other.coupon_discount &&
        job_pickup_phone == other.job_pickup_phone &&
        job_pickup_address == other.job_pickup_address &&
        return_enabled == other.return_enabled &&
        job_pickup_datetime == other.job_pickup_datetime &&
        job_delivery_datetime == other.job_delivery_datetime &&
        fleet_id == other.fleet_id &&
        marketplace_user_id_68757 == other.marketplace_user_id_68757 &&
        form_id == other.form_id &&
        transaction_id == other.transaction_id &&
        remaining_balance == other.remaining_balance &&
        tax == other.tax &&
        total_amount == other.total_amount &&
        order_amount == other.order_amount &&
        payment_type == other.payment_type &&
        merchant_email == other.merchant_email &&
        customer_rating == other.customer_rating;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), order_id.hashCode), job_type.hashCode), business_type.hashCode), provider.hashCode), order_summary_collection.hashCode), description_json.hashCode), parent_category_id.hashCode), is_enabled.hashCode), is_recurring_enabled.hashCode), is_side_order.hashCode), service_time.hashCode), available_quantity.hashCode), is_deleted.hashCode), cost_price.hashCode), price.hashCode), unit_type.hashCode), unit.hashCode), steps_collection.hashCode), customer_id.hashCode), customer_phone.hashCode), cart_id.hashCode), amount.hashCode), delivery_charge.hashCode), currency_id.hashCode), self_pickup.hashCode), store_id.hashCode), refunded_amount_optional.hashCode), accept_reject.hashCode), long_description_json.hashCode), customer.hashCode), date_time.hashCode), type.hashCode), location_of_agent.hashCode), is_scheduled.hashCode), status.hashCode), eta.hashCode), agent_assigned.hashCode), follow_up_order_recommendations.hashCode),
                                                                                has_delivery.hashCode),
                                                                            has_pickup.hashCode),
                                                                        coupon_discount.hashCode),
                                                                    job_pickup_phone.hashCode),
                                                                job_pickup_address.hashCode),
                                                            return_enabled.hashCode),
                                                        job_pickup_datetime.hashCode),
                                                    job_delivery_datetime.hashCode),
                                                fleet_id.hashCode),
                                            marketplace_user_id_68757.hashCode),
                                        form_id.hashCode),
                                    transaction_id.hashCode),
                                remaining_balance.hashCode),
                            tax.hashCode),
                        total_amount.hashCode),
                    order_amount.hashCode),
                payment_type.hashCode),
            merchant_email.hashCode),
        customer_rating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('order_id', order_id)
          ..add('job_type', job_type)
          ..add('business_type', business_type)
          ..add('provider', provider)
          ..add('order_summary_collection', order_summary_collection)
          ..add('description_json', description_json)
          ..add('parent_category_id', parent_category_id)
          ..add('is_enabled', is_enabled)
          ..add('is_recurring_enabled', is_recurring_enabled)
          ..add('is_side_order', is_side_order)
          ..add('service_time', service_time)
          ..add('available_quantity', available_quantity)
          ..add('is_deleted', is_deleted)
          ..add('cost_price', cost_price)
          ..add('price', price)
          ..add('unit_type', unit_type)
          ..add('unit', unit)
          ..add('steps_collection', steps_collection)
          ..add('customer_id', customer_id)
          ..add('customer_phone', customer_phone)
          ..add('cart_id', cart_id)
          ..add('amount', amount)
          ..add('delivery_charge', delivery_charge)
          ..add('currency_id', currency_id)
          ..add('self_pickup', self_pickup)
          ..add('store_id', store_id)
          ..add('refunded_amount_optional', refunded_amount_optional)
          ..add('accept_reject', accept_reject)
          ..add('long_description_json', long_description_json)
          ..add('customer', customer)
          ..add('date_time', date_time)
          ..add('type', type)
          ..add('location_of_agent', location_of_agent)
          ..add('is_scheduled', is_scheduled)
          ..add('status', status)
          ..add('eta', eta)
          ..add('agent_assigned', agent_assigned)
          ..add('follow_up_order_recommendations',
              follow_up_order_recommendations)
          ..add('has_delivery', has_delivery)
          ..add('has_pickup', has_pickup)
          ..add('coupon_discount', coupon_discount)
          ..add('job_pickup_phone', job_pickup_phone)
          ..add('job_pickup_address', job_pickup_address)
          ..add('return_enabled', return_enabled)
          ..add('job_pickup_datetime', job_pickup_datetime)
          ..add('job_delivery_datetime', job_delivery_datetime)
          ..add('fleet_id', fleet_id)
          ..add('marketplace_user_id_68757', marketplace_user_id_68757)
          ..add('form_id', form_id)
          ..add('transaction_id', transaction_id)
          ..add('remaining_balance', remaining_balance)
          ..add('tax', tax)
          ..add('total_amount', total_amount)
          ..add('order_amount', order_amount)
          ..add('payment_type', payment_type)
          ..add('merchant_email', merchant_email)
          ..add('customer_rating', customer_rating))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _order_id;
  String get order_id => _$this._order_id;
  set order_id(String order_id) => _$this._order_id = order_id;

  String _job_type;
  String get job_type => _$this._job_type;
  set job_type(String job_type) => _$this._job_type = job_type;

  String _business_type;
  String get business_type => _$this._business_type;
  set business_type(String business_type) =>
      _$this._business_type = business_type;

  String _provider;
  String get provider => _$this._provider;
  set provider(String provider) => _$this._provider = provider;

  String _order_summary_collection;
  String get order_summary_collection => _$this._order_summary_collection;
  set order_summary_collection(String order_summary_collection) =>
      _$this._order_summary_collection = order_summary_collection;

  String _description_json;
  String get description_json => _$this._description_json;
  set description_json(String description_json) =>
      _$this._description_json = description_json;

  String _parent_category_id;
  String get parent_category_id => _$this._parent_category_id;
  set parent_category_id(String parent_category_id) =>
      _$this._parent_category_id = parent_category_id;

  String _is_enabled;
  String get is_enabled => _$this._is_enabled;
  set is_enabled(String is_enabled) => _$this._is_enabled = is_enabled;

  String _is_recurring_enabled;
  String get is_recurring_enabled => _$this._is_recurring_enabled;
  set is_recurring_enabled(String is_recurring_enabled) =>
      _$this._is_recurring_enabled = is_recurring_enabled;

  String _is_side_order;
  String get is_side_order => _$this._is_side_order;
  set is_side_order(String is_side_order) =>
      _$this._is_side_order = is_side_order;

  String _service_time;
  String get service_time => _$this._service_time;
  set service_time(String service_time) => _$this._service_time = service_time;

  String _available_quantity;
  String get available_quantity => _$this._available_quantity;
  set available_quantity(String available_quantity) =>
      _$this._available_quantity = available_quantity;

  String _is_deleted;
  String get is_deleted => _$this._is_deleted;
  set is_deleted(String is_deleted) => _$this._is_deleted = is_deleted;

  String _cost_price;
  String get cost_price => _$this._cost_price;
  set cost_price(String cost_price) => _$this._cost_price = cost_price;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _unit_type;
  String get unit_type => _$this._unit_type;
  set unit_type(String unit_type) => _$this._unit_type = unit_type;

  String _unit;
  String get unit => _$this._unit;
  set unit(String unit) => _$this._unit = unit;

  String _steps_collection;
  String get steps_collection => _$this._steps_collection;
  set steps_collection(String steps_collection) =>
      _$this._steps_collection = steps_collection;

  String _customer_id;
  String get customer_id => _$this._customer_id;
  set customer_id(String customer_id) => _$this._customer_id = customer_id;

  String _customer_phone;
  String get customer_phone => _$this._customer_phone;
  set customer_phone(String customer_phone) =>
      _$this._customer_phone = customer_phone;

  String _cart_id;
  String get cart_id => _$this._cart_id;
  set cart_id(String cart_id) => _$this._cart_id = cart_id;

  String _amount;
  String get amount => _$this._amount;
  set amount(String amount) => _$this._amount = amount;

  String _delivery_charge;
  String get delivery_charge => _$this._delivery_charge;
  set delivery_charge(String delivery_charge) =>
      _$this._delivery_charge = delivery_charge;

  String _currency_id;
  String get currency_id => _$this._currency_id;
  set currency_id(String currency_id) => _$this._currency_id = currency_id;

  String _self_pickup;
  String get self_pickup => _$this._self_pickup;
  set self_pickup(String self_pickup) => _$this._self_pickup = self_pickup;

  String _store_id;
  String get store_id => _$this._store_id;
  set store_id(String store_id) => _$this._store_id = store_id;

  String _refunded_amount_optional;
  String get refunded_amount_optional => _$this._refunded_amount_optional;
  set refunded_amount_optional(String refunded_amount_optional) =>
      _$this._refunded_amount_optional = refunded_amount_optional;

  String _accept_reject;
  String get accept_reject => _$this._accept_reject;
  set accept_reject(String accept_reject) =>
      _$this._accept_reject = accept_reject;

  String _long_description_json;
  String get long_description_json => _$this._long_description_json;
  set long_description_json(String long_description_json) =>
      _$this._long_description_json = long_description_json;

  String _customer;
  String get customer => _$this._customer;
  set customer(String customer) => _$this._customer = customer;

  String _date_time;
  String get date_time => _$this._date_time;
  set date_time(String date_time) => _$this._date_time = date_time;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _location_of_agent;
  String get location_of_agent => _$this._location_of_agent;
  set location_of_agent(String location_of_agent) =>
      _$this._location_of_agent = location_of_agent;

  String _is_scheduled;
  String get is_scheduled => _$this._is_scheduled;
  set is_scheduled(String is_scheduled) => _$this._is_scheduled = is_scheduled;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _eta;
  String get eta => _$this._eta;
  set eta(String eta) => _$this._eta = eta;

  String _agent_assigned;
  String get agent_assigned => _$this._agent_assigned;
  set agent_assigned(String agent_assigned) =>
      _$this._agent_assigned = agent_assigned;

  String _follow_up_order_recommendations;
  String get follow_up_order_recommendations =>
      _$this._follow_up_order_recommendations;
  set follow_up_order_recommendations(String follow_up_order_recommendations) =>
      _$this._follow_up_order_recommendations = follow_up_order_recommendations;

  String _has_delivery;
  String get has_delivery => _$this._has_delivery;
  set has_delivery(String has_delivery) => _$this._has_delivery = has_delivery;

  String _has_pickup;
  String get has_pickup => _$this._has_pickup;
  set has_pickup(String has_pickup) => _$this._has_pickup = has_pickup;

  String _coupon_discount;
  String get coupon_discount => _$this._coupon_discount;
  set coupon_discount(String coupon_discount) =>
      _$this._coupon_discount = coupon_discount;

  String _job_pickup_phone;
  String get job_pickup_phone => _$this._job_pickup_phone;
  set job_pickup_phone(String job_pickup_phone) =>
      _$this._job_pickup_phone = job_pickup_phone;

  String _job_pickup_address;
  String get job_pickup_address => _$this._job_pickup_address;
  set job_pickup_address(String job_pickup_address) =>
      _$this._job_pickup_address = job_pickup_address;

  String _return_enabled;
  String get return_enabled => _$this._return_enabled;
  set return_enabled(String return_enabled) =>
      _$this._return_enabled = return_enabled;

  String _job_pickup_datetime;
  String get job_pickup_datetime => _$this._job_pickup_datetime;
  set job_pickup_datetime(String job_pickup_datetime) =>
      _$this._job_pickup_datetime = job_pickup_datetime;

  String _job_delivery_datetime;
  String get job_delivery_datetime => _$this._job_delivery_datetime;
  set job_delivery_datetime(String job_delivery_datetime) =>
      _$this._job_delivery_datetime = job_delivery_datetime;

  String _fleet_id;
  String get fleet_id => _$this._fleet_id;
  set fleet_id(String fleet_id) => _$this._fleet_id = fleet_id;

  String _marketplace_user_id_68757;
  String get marketplace_user_id_68757 => _$this._marketplace_user_id_68757;
  set marketplace_user_id_68757(String marketplace_user_id_68757) =>
      _$this._marketplace_user_id_68757 = marketplace_user_id_68757;

  String _form_id;
  String get form_id => _$this._form_id;
  set form_id(String form_id) => _$this._form_id = form_id;

  String _transaction_id;
  String get transaction_id => _$this._transaction_id;
  set transaction_id(String transaction_id) =>
      _$this._transaction_id = transaction_id;

  String _remaining_balance;
  String get remaining_balance => _$this._remaining_balance;
  set remaining_balance(String remaining_balance) =>
      _$this._remaining_balance = remaining_balance;

  String _tax;
  String get tax => _$this._tax;
  set tax(String tax) => _$this._tax = tax;

  String _total_amount;
  String get total_amount => _$this._total_amount;
  set total_amount(String total_amount) => _$this._total_amount = total_amount;

  String _order_amount;
  String get order_amount => _$this._order_amount;
  set order_amount(String order_amount) => _$this._order_amount = order_amount;

  String _payment_type;
  String get payment_type => _$this._payment_type;
  set payment_type(String payment_type) => _$this._payment_type = payment_type;

  String _merchant_email;
  String get merchant_email => _$this._merchant_email;
  set merchant_email(String merchant_email) =>
      _$this._merchant_email = merchant_email;

  String _customer_rating;
  String get customer_rating => _$this._customer_rating;
  set customer_rating(String customer_rating) =>
      _$this._customer_rating = customer_rating;

  OrderBuilder();

  OrderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _order_id = _$v.order_id;
      _job_type = _$v.job_type;
      _business_type = _$v.business_type;
      _provider = _$v.provider;
      _order_summary_collection = _$v.order_summary_collection;
      _description_json = _$v.description_json;
      _parent_category_id = _$v.parent_category_id;
      _is_enabled = _$v.is_enabled;
      _is_recurring_enabled = _$v.is_recurring_enabled;
      _is_side_order = _$v.is_side_order;
      _service_time = _$v.service_time;
      _available_quantity = _$v.available_quantity;
      _is_deleted = _$v.is_deleted;
      _cost_price = _$v.cost_price;
      _price = _$v.price;
      _unit_type = _$v.unit_type;
      _unit = _$v.unit;
      _steps_collection = _$v.steps_collection;
      _customer_id = _$v.customer_id;
      _customer_phone = _$v.customer_phone;
      _cart_id = _$v.cart_id;
      _amount = _$v.amount;
      _delivery_charge = _$v.delivery_charge;
      _currency_id = _$v.currency_id;
      _self_pickup = _$v.self_pickup;
      _store_id = _$v.store_id;
      _refunded_amount_optional = _$v.refunded_amount_optional;
      _accept_reject = _$v.accept_reject;
      _long_description_json = _$v.long_description_json;
      _customer = _$v.customer;
      _date_time = _$v.date_time;
      _type = _$v.type;
      _location_of_agent = _$v.location_of_agent;
      _is_scheduled = _$v.is_scheduled;
      _status = _$v.status;
      _eta = _$v.eta;
      _agent_assigned = _$v.agent_assigned;
      _follow_up_order_recommendations = _$v.follow_up_order_recommendations;
      _has_delivery = _$v.has_delivery;
      _has_pickup = _$v.has_pickup;
      _coupon_discount = _$v.coupon_discount;
      _job_pickup_phone = _$v.job_pickup_phone;
      _job_pickup_address = _$v.job_pickup_address;
      _return_enabled = _$v.return_enabled;
      _job_pickup_datetime = _$v.job_pickup_datetime;
      _job_delivery_datetime = _$v.job_delivery_datetime;
      _fleet_id = _$v.fleet_id;
      _marketplace_user_id_68757 = _$v.marketplace_user_id_68757;
      _form_id = _$v.form_id;
      _transaction_id = _$v.transaction_id;
      _remaining_balance = _$v.remaining_balance;
      _tax = _$v.tax;
      _total_amount = _$v.total_amount;
      _order_amount = _$v.order_amount;
      _payment_type = _$v.payment_type;
      _merchant_email = _$v.merchant_email;
      _customer_rating = _$v.customer_rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    final _$result = _$v ??
        new _$Order._(
            id: id,
            order_id: order_id,
            job_type: job_type,
            business_type: business_type,
            provider: provider,
            order_summary_collection: order_summary_collection,
            description_json: description_json,
            parent_category_id: parent_category_id,
            is_enabled: is_enabled,
            is_recurring_enabled: is_recurring_enabled,
            is_side_order: is_side_order,
            service_time: service_time,
            available_quantity: available_quantity,
            is_deleted: is_deleted,
            cost_price: cost_price,
            price: price,
            unit_type: unit_type,
            unit: unit,
            steps_collection: steps_collection,
            customer_id: customer_id,
            customer_phone: customer_phone,
            cart_id: cart_id,
            amount: amount,
            delivery_charge: delivery_charge,
            currency_id: currency_id,
            self_pickup: self_pickup,
            store_id: store_id,
            refunded_amount_optional: refunded_amount_optional,
            accept_reject: accept_reject,
            long_description_json: long_description_json,
            customer: customer,
            date_time: date_time,
            type: type,
            location_of_agent: location_of_agent,
            is_scheduled: is_scheduled,
            status: status,
            eta: eta,
            agent_assigned: agent_assigned,
            follow_up_order_recommendations: follow_up_order_recommendations,
            has_delivery: has_delivery,
            has_pickup: has_pickup,
            coupon_discount: coupon_discount,
            job_pickup_phone: job_pickup_phone,
            job_pickup_address: job_pickup_address,
            return_enabled: return_enabled,
            job_pickup_datetime: job_pickup_datetime,
            job_delivery_datetime: job_delivery_datetime,
            fleet_id: fleet_id,
            marketplace_user_id_68757: marketplace_user_id_68757,
            form_id: form_id,
            transaction_id: transaction_id,
            remaining_balance: remaining_balance,
            tax: tax,
            total_amount: total_amount,
            order_amount: order_amount,
            payment_type: payment_type,
            merchant_email: merchant_email,
            customer_rating: customer_rating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
