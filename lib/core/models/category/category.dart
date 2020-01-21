import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';
import 'package:built_collection/built_collection.dart' ;

part 'category.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Category implements Built<Category, CategoryBuilder> {
  @nullable
  int get id;

  String get category_key;
  String get category;
  BuiltList<String> get category_examples;
  String get count_of_services_in_category;
  String get parent_category_id;
  String get super_catalogue_id;
  String get layout_type;
  String get layout_id;
  String get priority;
  String get is_dummy;
  String get is_enabled;
  String get level;
  String get has_children;
  String get has_products;
  String get is_deleted;
  String get child_layout_type;
  String get admin_catalogue_id;
  String get products_has_image;
  String get is_side_order;
  String get show_catalog;
  String get has_active_children;
  String get is_required;
  String get depth;

  Map<String, dynamic> toMap() {
    //Real weird way to resolve error on firebase
    return jsonDecode(
        jsonEncode(serializers.serializeWith(Category.serializer, this)));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Category.serializer, this));
  }

  static Category fromJson(String jsonString) {
    return serializers.deserializeWith(
      Category.serializer,
      json.decode(jsonString),
    );
  }

  static Category fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Category.serializer,
      map,
    );
  }

  Category._();
  static Serializer<Category> get serializer => _$categorySerializer;
  factory Category([void Function(CategoryBuilder) updates]) = _$Category;
}
