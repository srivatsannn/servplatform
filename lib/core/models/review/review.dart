import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'review.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Review implements Built<Review, ServiceBuilder> {
  @nullable
  int get id;

  String get reviewer_key;
  String get provider_key;
  String get service_key;
  String get review_descrpitpn;
  String get revieewee;
  String get date;
  String get star_rating;
  String get insights;
  String get multi_mg_url;
  String get agent;
  String get price;
  String get review_for;
  String get suggested_compliments_list;
  String get negative_feedback;
  String get video_url;

  String get review;
  String get percentage_match;

  Map<String, dynamic> toMap() {
    return json.decode(serializers.serializeWith(Review.serializer, this));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Review.serializer, this));
  }

  static Review fromJson(String jsonString) {
    return serializers.deserializeWith(
      Review.serializer,
      json.decode(jsonString),
    );
  }

  static Review fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Review.serializer,
      map,
    );
  }

  Review._();
  static Serializer<Review> get serializer => _$reviewSerializer;
  factory Review([void Function(ServiceBuilder) updates]) = _$Review;
}
