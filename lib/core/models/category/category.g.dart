// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Category> _$categorySerializer = new _$CategorySerializer();

class _$CategorySerializer implements StructuredSerializer<Category> {
  @override
  final Iterable<Type> types = const [Category, _$Category];
  @override
  final String wireName = 'Category';

  @override
  Iterable<Object> serialize(Serializers serializers, Category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'category_key',
      serializers.serialize(object.category_key,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'category_examples',
      serializers.serialize(object.category_examples,
          specifiedType: const FullType(String)),
      'count_of_services_in_category',
      serializers.serialize(object.count_of_services_in_category,
          specifiedType: const FullType(String)),
      'parent_category_id',
      serializers.serialize(object.parent_category_id,
          specifiedType: const FullType(String)),
      'super_catalogue_id',
      serializers.serialize(object.super_catalogue_id,
          specifiedType: const FullType(String)),
      'layout_type',
      serializers.serialize(object.layout_type,
          specifiedType: const FullType(String)),
      'layout_id',
      serializers.serialize(object.layout_id,
          specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(String)),
      'is_dummy',
      serializers.serialize(object.is_dummy,
          specifiedType: const FullType(String)),
      'is_enabled',
      serializers.serialize(object.is_enabled,
          specifiedType: const FullType(String)),
      'level',
      serializers.serialize(object.level,
          specifiedType: const FullType(String)),
      'has_children',
      serializers.serialize(object.has_children,
          specifiedType: const FullType(String)),
      'has_products',
      serializers.serialize(object.has_products,
          specifiedType: const FullType(String)),
      'is_deleted',
      serializers.serialize(object.is_deleted,
          specifiedType: const FullType(String)),
      'child_layout_type',
      serializers.serialize(object.child_layout_type,
          specifiedType: const FullType(String)),
      'admin_catalogue_id',
      serializers.serialize(object.admin_catalogue_id,
          specifiedType: const FullType(String)),
      'products_has_image',
      serializers.serialize(object.products_has_image,
          specifiedType: const FullType(String)),
      'is_side_order',
      serializers.serialize(object.is_side_order,
          specifiedType: const FullType(String)),
      'show_catalog',
      serializers.serialize(object.show_catalog,
          specifiedType: const FullType(String)),
      'has_active_children',
      serializers.serialize(object.has_active_children,
          specifiedType: const FullType(String)),
      'is_required',
      serializers.serialize(object.is_required,
          specifiedType: const FullType(String)),
      'depth',
      serializers.serialize(object.depth,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Category deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'category_key':
          result.category_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_examples':
          result.category_examples = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'count_of_services_in_category':
          result.count_of_services_in_category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent_category_id':
          result.parent_category_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'super_catalogue_id':
          result.super_catalogue_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'layout_type':
          result.layout_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'layout_id':
          result.layout_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_dummy':
          result.is_dummy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_enabled':
          result.is_enabled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_children':
          result.has_children = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_products':
          result.has_products = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_deleted':
          result.is_deleted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'child_layout_type':
          result.child_layout_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'admin_catalogue_id':
          result.admin_catalogue_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'products_has_image':
          result.products_has_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_side_order':
          result.is_side_order = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'show_catalog':
          result.show_catalog = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_active_children':
          result.has_active_children = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_required':
          result.is_required = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'depth':
          result.depth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Category extends Category {
  @override
  final int id;
  @override
  final String category_key;
  @override
  final String category;
  @override
  final String category_examples;
  @override
  final String count_of_services_in_category;
  @override
  final String parent_category_id;
  @override
  final String super_catalogue_id;
  @override
  final String layout_type;
  @override
  final String layout_id;
  @override
  final String priority;
  @override
  final String is_dummy;
  @override
  final String is_enabled;
  @override
  final String level;
  @override
  final String has_children;
  @override
  final String has_products;
  @override
  final String is_deleted;
  @override
  final String child_layout_type;
  @override
  final String admin_catalogue_id;
  @override
  final String products_has_image;
  @override
  final String is_side_order;
  @override
  final String show_catalog;
  @override
  final String has_active_children;
  @override
  final String is_required;
  @override
  final String depth;

  factory _$Category([void Function(CategoryBuilder) updates]) =>
      (new CategoryBuilder()..update(updates)).build();

  _$Category._(
      {this.id,
      this.category_key,
      this.category,
      this.category_examples,
      this.count_of_services_in_category,
      this.parent_category_id,
      this.super_catalogue_id,
      this.layout_type,
      this.layout_id,
      this.priority,
      this.is_dummy,
      this.is_enabled,
      this.level,
      this.has_children,
      this.has_products,
      this.is_deleted,
      this.child_layout_type,
      this.admin_catalogue_id,
      this.products_has_image,
      this.is_side_order,
      this.show_catalog,
      this.has_active_children,
      this.is_required,
      this.depth})
      : super._() {
    if (category_key == null) {
      throw new BuiltValueNullFieldError('Category', 'category_key');
    }
    if (category == null) {
      throw new BuiltValueNullFieldError('Category', 'category');
    }
    if (category_examples == null) {
      throw new BuiltValueNullFieldError('Category', 'category_examples');
    }
    if (count_of_services_in_category == null) {
      throw new BuiltValueNullFieldError(
          'Category', 'count_of_services_in_category');
    }
    if (parent_category_id == null) {
      throw new BuiltValueNullFieldError('Category', 'parent_category_id');
    }
    if (super_catalogue_id == null) {
      throw new BuiltValueNullFieldError('Category', 'super_catalogue_id');
    }
    if (layout_type == null) {
      throw new BuiltValueNullFieldError('Category', 'layout_type');
    }
    if (layout_id == null) {
      throw new BuiltValueNullFieldError('Category', 'layout_id');
    }
    if (priority == null) {
      throw new BuiltValueNullFieldError('Category', 'priority');
    }
    if (is_dummy == null) {
      throw new BuiltValueNullFieldError('Category', 'is_dummy');
    }
    if (is_enabled == null) {
      throw new BuiltValueNullFieldError('Category', 'is_enabled');
    }
    if (level == null) {
      throw new BuiltValueNullFieldError('Category', 'level');
    }
    if (has_children == null) {
      throw new BuiltValueNullFieldError('Category', 'has_children');
    }
    if (has_products == null) {
      throw new BuiltValueNullFieldError('Category', 'has_products');
    }
    if (is_deleted == null) {
      throw new BuiltValueNullFieldError('Category', 'is_deleted');
    }
    if (child_layout_type == null) {
      throw new BuiltValueNullFieldError('Category', 'child_layout_type');
    }
    if (admin_catalogue_id == null) {
      throw new BuiltValueNullFieldError('Category', 'admin_catalogue_id');
    }
    if (products_has_image == null) {
      throw new BuiltValueNullFieldError('Category', 'products_has_image');
    }
    if (is_side_order == null) {
      throw new BuiltValueNullFieldError('Category', 'is_side_order');
    }
    if (show_catalog == null) {
      throw new BuiltValueNullFieldError('Category', 'show_catalog');
    }
    if (has_active_children == null) {
      throw new BuiltValueNullFieldError('Category', 'has_active_children');
    }
    if (is_required == null) {
      throw new BuiltValueNullFieldError('Category', 'is_required');
    }
    if (depth == null) {
      throw new BuiltValueNullFieldError('Category', 'depth');
    }
  }

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        id == other.id &&
        category_key == other.category_key &&
        category == other.category &&
        category_examples == other.category_examples &&
        count_of_services_in_category == other.count_of_services_in_category &&
        parent_category_id == other.parent_category_id &&
        super_catalogue_id == other.super_catalogue_id &&
        layout_type == other.layout_type &&
        layout_id == other.layout_id &&
        priority == other.priority &&
        is_dummy == other.is_dummy &&
        is_enabled == other.is_enabled &&
        level == other.level &&
        has_children == other.has_children &&
        has_products == other.has_products &&
        is_deleted == other.is_deleted &&
        child_layout_type == other.child_layout_type &&
        admin_catalogue_id == other.admin_catalogue_id &&
        products_has_image == other.products_has_image &&
        is_side_order == other.is_side_order &&
        show_catalog == other.show_catalog &&
        has_active_children == other.has_active_children &&
        is_required == other.is_required &&
        depth == other.depth;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, id.hashCode), category_key.hashCode), category.hashCode), category_examples.hashCode), count_of_services_in_category.hashCode),
                                                                                parent_category_id.hashCode),
                                                                            super_catalogue_id.hashCode),
                                                                        layout_type.hashCode),
                                                                    layout_id.hashCode),
                                                                priority.hashCode),
                                                            is_dummy.hashCode),
                                                        is_enabled.hashCode),
                                                    level.hashCode),
                                                has_children.hashCode),
                                            has_products.hashCode),
                                        is_deleted.hashCode),
                                    child_layout_type.hashCode),
                                admin_catalogue_id.hashCode),
                            products_has_image.hashCode),
                        is_side_order.hashCode),
                    show_catalog.hashCode),
                has_active_children.hashCode),
            is_required.hashCode),
        depth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Category')
          ..add('id', id)
          ..add('category_key', category_key)
          ..add('category', category)
          ..add('category_examples', category_examples)
          ..add('count_of_services_in_category', count_of_services_in_category)
          ..add('parent_category_id', parent_category_id)
          ..add('super_catalogue_id', super_catalogue_id)
          ..add('layout_type', layout_type)
          ..add('layout_id', layout_id)
          ..add('priority', priority)
          ..add('is_dummy', is_dummy)
          ..add('is_enabled', is_enabled)
          ..add('level', level)
          ..add('has_children', has_children)
          ..add('has_products', has_products)
          ..add('is_deleted', is_deleted)
          ..add('child_layout_type', child_layout_type)
          ..add('admin_catalogue_id', admin_catalogue_id)
          ..add('products_has_image', products_has_image)
          ..add('is_side_order', is_side_order)
          ..add('show_catalog', show_catalog)
          ..add('has_active_children', has_active_children)
          ..add('is_required', is_required)
          ..add('depth', depth))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _category_key;
  String get category_key => _$this._category_key;
  set category_key(String category_key) => _$this._category_key = category_key;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _category_examples;
  String get category_examples => _$this._category_examples;
  set category_examples(String category_examples) =>
      _$this._category_examples = category_examples;

  String _count_of_services_in_category;
  String get count_of_services_in_category =>
      _$this._count_of_services_in_category;
  set count_of_services_in_category(String count_of_services_in_category) =>
      _$this._count_of_services_in_category = count_of_services_in_category;

  String _parent_category_id;
  String get parent_category_id => _$this._parent_category_id;
  set parent_category_id(String parent_category_id) =>
      _$this._parent_category_id = parent_category_id;

  String _super_catalogue_id;
  String get super_catalogue_id => _$this._super_catalogue_id;
  set super_catalogue_id(String super_catalogue_id) =>
      _$this._super_catalogue_id = super_catalogue_id;

  String _layout_type;
  String get layout_type => _$this._layout_type;
  set layout_type(String layout_type) => _$this._layout_type = layout_type;

  String _layout_id;
  String get layout_id => _$this._layout_id;
  set layout_id(String layout_id) => _$this._layout_id = layout_id;

  String _priority;
  String get priority => _$this._priority;
  set priority(String priority) => _$this._priority = priority;

  String _is_dummy;
  String get is_dummy => _$this._is_dummy;
  set is_dummy(String is_dummy) => _$this._is_dummy = is_dummy;

  String _is_enabled;
  String get is_enabled => _$this._is_enabled;
  set is_enabled(String is_enabled) => _$this._is_enabled = is_enabled;

  String _level;
  String get level => _$this._level;
  set level(String level) => _$this._level = level;

  String _has_children;
  String get has_children => _$this._has_children;
  set has_children(String has_children) => _$this._has_children = has_children;

  String _has_products;
  String get has_products => _$this._has_products;
  set has_products(String has_products) => _$this._has_products = has_products;

  String _is_deleted;
  String get is_deleted => _$this._is_deleted;
  set is_deleted(String is_deleted) => _$this._is_deleted = is_deleted;

  String _child_layout_type;
  String get child_layout_type => _$this._child_layout_type;
  set child_layout_type(String child_layout_type) =>
      _$this._child_layout_type = child_layout_type;

  String _admin_catalogue_id;
  String get admin_catalogue_id => _$this._admin_catalogue_id;
  set admin_catalogue_id(String admin_catalogue_id) =>
      _$this._admin_catalogue_id = admin_catalogue_id;

  String _products_has_image;
  String get products_has_image => _$this._products_has_image;
  set products_has_image(String products_has_image) =>
      _$this._products_has_image = products_has_image;

  String _is_side_order;
  String get is_side_order => _$this._is_side_order;
  set is_side_order(String is_side_order) =>
      _$this._is_side_order = is_side_order;

  String _show_catalog;
  String get show_catalog => _$this._show_catalog;
  set show_catalog(String show_catalog) => _$this._show_catalog = show_catalog;

  String _has_active_children;
  String get has_active_children => _$this._has_active_children;
  set has_active_children(String has_active_children) =>
      _$this._has_active_children = has_active_children;

  String _is_required;
  String get is_required => _$this._is_required;
  set is_required(String is_required) => _$this._is_required = is_required;

  String _depth;
  String get depth => _$this._depth;
  set depth(String depth) => _$this._depth = depth;

  CategoryBuilder();

  CategoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _category_key = _$v.category_key;
      _category = _$v.category;
      _category_examples = _$v.category_examples;
      _count_of_services_in_category = _$v.count_of_services_in_category;
      _parent_category_id = _$v.parent_category_id;
      _super_catalogue_id = _$v.super_catalogue_id;
      _layout_type = _$v.layout_type;
      _layout_id = _$v.layout_id;
      _priority = _$v.priority;
      _is_dummy = _$v.is_dummy;
      _is_enabled = _$v.is_enabled;
      _level = _$v.level;
      _has_children = _$v.has_children;
      _has_products = _$v.has_products;
      _is_deleted = _$v.is_deleted;
      _child_layout_type = _$v.child_layout_type;
      _admin_catalogue_id = _$v.admin_catalogue_id;
      _products_has_image = _$v.products_has_image;
      _is_side_order = _$v.is_side_order;
      _show_catalog = _$v.show_catalog;
      _has_active_children = _$v.has_active_children;
      _is_required = _$v.is_required;
      _depth = _$v.depth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Category build() {
    final _$result = _$v ??
        new _$Category._(
            id: id,
            category_key: category_key,
            category: category,
            category_examples: category_examples,
            count_of_services_in_category: count_of_services_in_category,
            parent_category_id: parent_category_id,
            super_catalogue_id: super_catalogue_id,
            layout_type: layout_type,
            layout_id: layout_id,
            priority: priority,
            is_dummy: is_dummy,
            is_enabled: is_enabled,
            level: level,
            has_children: has_children,
            has_products: has_products,
            is_deleted: is_deleted,
            child_layout_type: child_layout_type,
            admin_catalogue_id: admin_catalogue_id,
            products_has_image: products_has_image,
            is_side_order: is_side_order,
            show_catalog: show_catalog,
            has_active_children: has_active_children,
            is_required: is_required,
            depth: depth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
