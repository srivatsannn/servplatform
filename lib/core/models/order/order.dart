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
  String get refunded_amount(optional);
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
  String get example;
  String get has_delivery":0, "has_pickup":0, "job_description":"", "coupon_discount":0, "return_enabled":0, "job_pickup_phone":"+91353463456456", "job_pickup_address":"CDCL, Madhya Marg, 28B, Sector 28, Chandigarh, India", "job_pickup_datetime":"09/19/2019 05:05 pm", "checkout_template":[ ], "job_delivery_datetime":"09/19/2019 05:05 pm", "pickup_delivery_relationship":null, "fleet_id":null, "creation_datetime":"2019-09-18T05:03:29.000Z", "vertical":0, "marketplace_user_id":68757, "created_at":"2019-09-18T05:03:29.000Z", "form_id":0, "transaction_id":"0", "refunded_amount":null, "remaining_balance":0, "tax":0, "delivery_charge":0, "total_amount":49, "order_amount":49, "payment_type":"CASH", "is_job_rated":0, "customer_rating":0, "customer_comment":"", "pd_or_appointment":2, "user_id":150688, "merchant_email":"siyaanah@yopmail.com", "merchant_phone_number":"+9102938478392019", "additional_charges":0, "additional_charge_label":null, "overall_transaction_status":null, "merchant_name":"Siyaanah", "store_name_json":"{\"en\": \"Siyaanah\"}", "merchant_is_deleted":0, "merchant_id":150688, "is_cancel_allowed":0, "tip":0, "delivery_method":2, "is_custom_order":0, "task_type":0, "is_urgent_delivery":0, "customer_id":20733, "customer_username":"test", "transaction_status":null, "job_pickup_latitude":"30.7188978", "job_pickup_longitude":"76.81029809999995", "job_latitude":"30.7188978", "job_longitude":"76.81029809999995", "fugu_channel_id":"", "is_pickup_anywhere":null, "job_pickup_email":"tesdnh@yopmail.com", "job_pickup_name":"test", "cancel_order_admin":0, "promo_code":null, "customer_is_deleted":0, "hold_amount":0, "tookan_scheduled_datetime":null, "tookan_active_when_job_created":0, "merchant_earning":null, "commission_amount":null, "commission_payout_status":"PAID", "customer_rating_by_merchant":0, "customer_review_by_merchant":"", "order_preparation_time":0, "is_scheduled":0, "currency_code":"USD", "currency_symbol":"$", "merchant_payment_methods":1, "transaction_charges":0, "debt_amount":0, "customer_phone":"+91353463456456", "job_address":"CDCL, Madhya Marg, 28B, Sector 28, Chandigarh, India", "customer_email":"tesdnh@yopmail.com", "payment_method":8, "isEditAllowed":1, "isEditedTask":0, "user_taxes":[ ], "show_status":1, "orderDetails":[ { "customizations":[ ], "product":{ "order_item_id":73820, "job_id":64144, "product_id":120111, "seller_id":150688, "cust_id":null, "unit_price":5, "cost_price":null, "unit_type":1, "unit_count":1, "unit":1, "quantity":1, "total_price":5, "customization_linking":"6911918203113805780", "status":1, "created_at":"2019-09-18T05:03:29.000Z", "updated_at":"2019-09-18T05:03:29.000Z", "inventory_enabled":0, "task_start_time":"2019-09-19T11:35:00.000Z", "task_end_time":"2019-09-19T12:35:00.000Z", "task_start_time_local":"2019-09-19T17:05:00.000Z", "task_end_time_local":"2019-09-19T18:05:00.000Z", "agent_id":0, "enable_tookan_agent":0, "business_type":null, "is_product_template_enabled":1, "template_cost":44, "template":[ { "cost":8, "label":"qwr", "value":"1", "option":[ { "cost":8, "text":"1" }, { "cost":16, "text":"2" } ], "data_type":"Single-Select", "display_name":"How many cleaners do you need?", "allowed_values":[ "1", "2" ] }, { "cost":32, "label":"how_many_hours_should_they_stay?", "value":"4", "option":[ { "cost":8, "text":"1" }, { "cost":16, "text":"2" }, { "cost":24, "text":"3" }, { "cost":32, "text":"4" } ], "data_type":"Single-Select", "display_name":"How many hours should they stay?", "allowed_values":[ "1", "2", "3", "4" ] }, { "cost":0, "label":"how_often_do_you_need_cleaning?", "value":"Frequently", "option":[ { "cost":0, "text":"Frequently" }, { "cost":0, "text":"Regularly" } ], "data_type":"Single-Select", "display_name":"How often do you need cleaning?", "allowed_values":[ "Frequently", "Regularly" ] }, { "cost":4, "label":"do_you_need_additional_services?", "value":[ "Laundry" ], "option":[ { "cost":5, "text":"Ironing" }, { "cost":7, "text":"Interior Window Cleaning" }, { "cost":4, "text":"Laundry" } ], "data_type":"Multi-Select", "display_name":"Do you need additional services?", "allowed_values":[ "Ironing", "Interior Window Cleaning", "Laundry" ] } ], "product_name":"Home Cleaning", "name_json":"{\"en\": \"Home Cleaning\"}", "product_image":"https://yelodotred.s3.amazonaws.com/task_images/SLNO1568372675067-chorescleaningcontemporary1321730.jpg", "catalogue_id":59074, "category_name":"Cleaning", "category_name_json":"{\"en\": \"Cleaning\"}", "multiPrice":[ { "unit":1, "price_type":1, "price":5 } ], "taxes":[ ], "services":{ "id":60806, "merchant_id":150688, "job_id":64144, "product_id":120111, "tookan_pickup_job_id":0, "tookan_delivery_job_id":0, "pickup_job_status":6, "delivery_job_status":6, "pickup_tracking_link":"", "delivery_tracking_link":"", "job_status":10, "business_type":2, "pd_or_appointment":2, "delivery_or_pickup":1, "is_custom_order":0, "cancellation_reason":null, "reason":null, "updated_by":"", "tookan_job_hash":null, "agent_id":0, "cancel_allowed":0, "tracking_link":"" } }, "job_id":64144 } ], "job_status":10, "loyalty_points":{ }, "fields":{ "custom_field":[ ] }, "is_customer_rated":0, "link_tasks":[ ], "link_task":{ }, "job_vertical":0, "acknowledged_datetime":"2019-09-18T05:03:31.858Z", "barcode":"", "arrived_datetime":"2019-09-18T05:03:31.858Z", "completed_by_admin":0, "completed_datetime":"2019-09-18T05:03:31.858Z", "customer_rating_by_driver":0, "distance_spent":0, "driver_comment":"", "tookan_pickup_job_id":0, "tookan_delivery_job_id":0, "team_id":0, "team_name":"", "total_distance_travelled":0, "recurring_id":0, "region_id":0, "region_name":"", "remarks":"", "started_datetime":"2019-09-18T05:03:31.858Z", "tags":"", "task_history":[ { "creation_datetime":"2019-09-18T05:03:29.000Z", "job_id":0, "fleet_id":0, "fleet_name":"", "type":"", "latitude":0, "longitude":0, "description":"" } ], "total_order_amount":5, "promoList":[ ], "transactionList":[ "0" ], "hippo_transaction_id":"64144_20733_150688", "grouping_tags":[ "GT_150688" ], "business_model_type":"HYPERLOCAL_PRODUCT"}

  String get order;
  String get percentage_match;

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
