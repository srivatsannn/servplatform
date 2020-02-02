import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'earning.g.dart';

/// An example service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Earning implements Built<Earning, EarningBuilder> {
  @nullable
  int get id;
  @nullable
  String get type_agent;
  @nullable
  String get today;
  @nullable
  String get today_no_ofTrips_completed;
  @nullable
  String get last_week;
  @nullable
  String get today_no_oftrips_completed;
  @nullable
  String get goal;
  @nullable
  String get goal_descrpiton;

  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Earning.serializer, this)));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Earning.serializer, this));
  }

  static Earning fromJson(String jsonString) {
    return serializers.deserializeWith(
      Earning.serializer,
      json.decode(jsonString),
    );
  }

  static Earning fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Earning.serializer,
      map,
    );
  }

  Earning._();
  static Serializer<Earning> get serializer => _$earningSerializer;
  factory Earning([void Function(EarningBuilder) updates]) = _$Earning;
}
