import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'adhoc_request.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class AdhocRequest
    implements Built<AdhocRequest, AdhocRequestBuilder> {
  @nullable
  int get id;

  String get user_key;
  String get request_title;
  String get request_description;
  String get created_at;
  String get status;
  String get story_key;

  
  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(AdhocRequest.serializer, this)));
  }


  String toJson() {
    return json
        .encode(serializers.serializeWith(AdhocRequest.serializer, this));
  }

  static AdhocRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
      AdhocRequest.serializer,
      json.decode(jsonString),
    );
  }

  static AdhocRequest fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      AdhocRequest.serializer,
      map,
    );
  }

  AdhocRequest._();
  static Serializer<AdhocRequest> get serializer => _$adhocRequestSerializer;
  factory AdhocRequest([void Function(AdhocRequestBuilder) updates]) =
      _$AdhocRequest;
}
