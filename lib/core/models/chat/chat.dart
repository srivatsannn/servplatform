import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'chat.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Chat implements Built<Chat, ChatBuilder> {
  @nullable
  int get id;
  @nullable
  String get text;
  @nullable
  String get type;
  @nullable
  String get content;
  @nullable
  String get from;
  @nullable
  String get to;
  @nullable
  String get isSeen;
  @nullable
  String get publishedAt;
  @nullable
  String get groupId;

  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Chat.serializer, this)));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Chat.serializer, this));
  }

  static Chat fromJson(String jsonString) {
    return serializers.deserializeWith(
      Chat.serializer,
      json.decode(jsonString),
    );
  }

  static Chat fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Chat.serializer,
      map,
    );
  }

  Chat._();
  static Serializer<Chat> get serializer => _$chatSerializer;
  factory Chat([void Function(ChatBuilder) updates]) = _$Chat;
}
