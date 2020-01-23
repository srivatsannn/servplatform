import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:servplatform/core/models/serializers.dart';

part 'category.g.dart';

/// An example Service model that should be serialized.
///   - @nullable: means that its ok if the value is null
///   - @BuiltValueField: is the key that is in the JSON you
///     receive from an API
abstract class Category implements Built<Category, CategoryBuilder> {
  @nullable
  int get id;
  @nullable
  String get category_key;
  @nullable
  String get category;
  @nullable
  String get category_examples;
  @nullable
  String get count_of_services_in_category;
  @nullable
  String get parent_category_id;
  @nullable
  String get super_catalogue_id;
  @nullable
  String get layout_type;
  @nullable
  String get layout_id;
  @nullable
  String get priority;
  @nullable
  String get is_dummy;
  @nullable
  String get is_enabled;
  @nullable
  String get level;
  @nullable
  String get has_children;
  @nullable
  String get has_products;
  @nullable
  String get is_deleted;
  @nullable
  String get child_layout_type;
  @nullable
  String get admin_catalogue_id;
  @nullable
  String get products_has_image;
  @nullable
  String get is_side_order;
  @nullable
  String get show_catalog;
  @nullable
  String get has_active_children;
  @nullable
  String get is_required;
  @nullable
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
