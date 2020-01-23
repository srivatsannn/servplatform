import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'review.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Review implements Built<Review, ReviewBuilder> {
  @nullable
  int get id;

  @nullable 
  String get reviewer_key;
  @nullable
  String get provider_key;
  @nullable
  String get service_key;
  @nullable
  String get review_descrpitpn;
  @nullable
  String get revieewee;
  @nullable
  String get date;
  @nullable
  String get star_rating;
  @nullable
  String get insights;
  @nullable
  String get multi_mg_url;
  @nullable
  String get agent;
  @nullable
  String get title;
  @nullable
  String get price;
  @nullable
  String get review_for;
  @nullable
  String get suggested_compliments_list;
  @nullable
  String get negative_feedback;
  @nullable
  String get video_url;
 




  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Review.serializer, this)));
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
  factory Review([void Function(ReviewBuilder) updates]) = _$Review;
}
