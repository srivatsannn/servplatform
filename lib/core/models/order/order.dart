import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'order.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Order implements Built<Order, ServiceBuilder> {
  @nullable
  int get id;
   
  String get order_id;
  String get job_type;
  String get business_type;
  String get provider;
  String get order_summary_collection;
  String get description_json;
  String get parent_category_id;
  String get is_enabled;
  String get is_recurring_enabled;
  String get is_side_order;
  String get service_time;
  String get available_quantity;
  String get is_deleted;
  String get cost_price;
  String get price;
  String get unit_type;
  String get unit;
  String get steps_collection;
  String get customer_id;
  String get customer_phone;
  String get cart_id;
  String get amount;
  String get delivery_charge;
  String get currency_id;
  String get self_pickup;
  String get store_id;
  String get refunded_amount_optional;
  String get accept_reject;
  String get long_description_json;
  String get customer;
  String get date_time;
  String get type;
  String get location_of_agent;
  String get is_scheduled;
  String get status;
  String get eta;
  String get agent_assigned;
  String get follow_up_order_recommendations;
  String get has_delivery;
  String get has_pickup;
  String get coupon_discount;
  String get job_pickup_phone;
  String get job_pickup_address;
  String get return_enabled;
  String get job_pickup_datetime;
  String get job_delivery_datetime;
  String get fleet_id;
  String get marketplace_user_id_68757;
  String get form_id;
  String get transaction_id;
  String get remaining_balance;
  String get tax;
  String get total_amount;
  String get order_amount;
  String get payment_type;
  String get merchant_email;
  String get customer_rating;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Order.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Order.serializer, this));
  }

  static Order fromJson(String jsonString) {
    return serializers.deserializeWith(
    Order.serializer,
      json.decode(jsonString),
    );
  }

  static Order fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Order.serializer,
      map,
    );
  }

  Order._();
  static Serializer<Order> get serializer => _$orderSerializer;
  factory Order([void Function(ServiceBuilder) updates]) = _$Order;
}
