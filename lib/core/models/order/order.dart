import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;

part 'order.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Order implements Built<Order, OrderBuilder> {
  @nullable
  int get id;
  @nullable
  String get order_id;
  @nullable 
  String get job_type;
  @nullable
  String get business_type;
  @nullable
  String get provider;
  @nullable
  String get order_summary_collection;
  @nullable
    @nullable String get description_json;
  @nullable
  String get parent_category_id;
  @nullable
  String get is_enabled;
  @nullable
  String get is_recurring_enabled;
  @nullable
  String get is_side_order;
  @nullable
  String get service_time;
  @nullable
  String get available_quantity;
  @nullable
  String get is_deleted;
  @nullable
  String get cost_price;
  @nullable
  String get price;
  @nullable
  String get unit_type;
  @nullable
  String get unit;
  @nullable
  String get steps_collection;
  @nullable
  String get customer_id;
  @nullable
  String get customer_phone;
  @nullable
  String get cart_id;
  @nullable
  String get amount;
  @nullable
  String get delivery_charge;
  @nullable
  String get currency_id;
  @nullable
  String get self_pickup;
  @nullable
  String get store_id;
  @nullable
  String get refunded_amount_optional;
  @nullable
  String get accept_reject;
  @nullable
  String get long_description_json;
  @nullable
  String get customer;
  @nullable
  String get date_time;
  @nullable
  //String get type;
  @nullable
  String get location_of_agent;
  @nullable
  String get is_scheduled;
  @nullable
  String get status;
  @nullable
  String get eta;
  @nullable
  String get agent_assigned;
  @nullable
  BuiltList<String> get follow_up_order_recommendations;
  @nullable
  String get has_delivery;
  @nullable
  String get has_pickup;
  @nullable
  String get coupon_discount;
  @nullable
  String get job_pickup_phone;
  @nullable
  String get job_pickup_address;
  @nullable
  String get return_enabled;
  @nullable
  String get job_pickup_datetime;
  @nullable
  String get job_delivery_datetime;
  @nullable
  String get fleet_id;
  @nullable
  String get marketplace_user_id_68757;
  @nullable
  String get form_id;
  @nullable
  String get transaction_id;
  @nullable
  String get remaining_balance;
  @nullable
  String get tax;
  @nullable
  String get total_amount;
  @nullable
  String get order_amount;
  @nullable
  String get payment_type;
  @nullable
  String get merchant_email;
  @nullable
  String get customer_rating;
  @nullable
  String get merchant_id;
  




  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Order.serializer, this)));
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
  factory Order([void Function(OrderBuilder) updates]) = _$Order;
}
