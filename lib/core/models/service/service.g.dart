// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Service> _$serviceSerializer = new _$ServiceSerializer();

class _$ServiceSerializer implements StructuredSerializer<Service> {
  @override
  final Iterable<Type> types = const [Service, _$Service];
  @override
  final String wireName = 'Service';

  @override
  Iterable<Object> serialize(Serializers serializers, Service object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'provider_key',
      serializers.serialize(object.provider_key,
          specifiedType: const FullType(String)),
      'inventory_enabled',
      serializers.serialize(object.inventory_enabled,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.service != null) {
      result
        ..add('service')
        ..add(serializers.serialize(object.service,
            specifiedType: const FullType(String)));
    }
    if (object.percentage_match != null) {
      result
        ..add('percentage_match')
        ..add(serializers.serialize(object.percentage_match,
            specifiedType: const FullType(String)));
    }
    if (object.service_description != null) {
      result
        ..add('service_description')
        ..add(serializers.serialize(object.service_description,
            specifiedType: const FullType(String)));
    }
    if (object.service_time != null) {
      result
        ..add('service_time')
        ..add(serializers.serialize(object.service_time,
            specifiedType: const FullType(String)));
    }
    if (object.unit != null) {
      result
        ..add('unit')
        ..add(serializers.serialize(object.unit,
            specifiedType: const FullType(String)));
    }
    if (object.multi_img_url != null) {
      result
        ..add('multi_img_url')
        ..add(serializers.serialize(object.multi_img_url,
            specifiedType: const FullType(String)));
    }
    if (object.category_key != null) {
      result
        ..add('category_key')
        ..add(serializers.serialize(object.category_key,
            specifiedType: const FullType(String)));
    }
    if (object.parent_category_key != null) {
      result
        ..add('parent_category_key')
        ..add(serializers.serialize(object.parent_category_key,
            specifiedType: const FullType(String)));
    }
    if (object.customization != null) {
      result
        ..add('customization')
        ..add(serializers.serialize(object.customization,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.available_quantity != null) {
      result
        ..add('available_quantity')
        ..add(serializers.serialize(object.available_quantity,
            specifiedType: const FullType(String)));
    }
    if (object.minimum_quatity != null) {
      result
        ..add('minimum_quatity')
        ..add(serializers.serialize(object.minimum_quatity,
            specifiedType: const FullType(String)));
    }
    if (object.is_side_order != null) {
      result
        ..add('is_side_order')
        ..add(serializers.serialize(object.is_side_order,
            specifiedType: const FullType(String)));
    }
    if (object.has_pickup != null) {
      result
        ..add('has_pickup')
        ..add(serializers.serialize(object.has_pickup,
            specifiedType: const FullType(String)));
    }
    if (object.has_delivery != null) {
      result
        ..add('has_delivery')
        ..add(serializers.serialize(object.has_delivery,
            specifiedType: const FullType(String)));
    }
    if (object.service_name != null) {
      result
        ..add('service_name')
        ..add(serializers.serialize(object.service_name,
            specifiedType: const FullType(String)));
    }
    if (object.currency != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(object.currency,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(String)));
    }
    if (object.logo_url != null) {
      result
        ..add('logo_url')
        ..add(serializers.serialize(object.logo_url,
            specifiedType: const FullType(String)));
    }
    if (object.is_multiple != null) {
      result
        ..add('is_multiple')
        ..add(serializers.serialize(object.is_multiple,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Service deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceBuilder();

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
        case 'service':
          result.service = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'provider_key':
          result.provider_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'percentage_match':
          result.percentage_match = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'service_description':
          result.service_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'service_time':
          result.service_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'multi_img_url':
          result.multi_img_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_key':
          result.category_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent_category_key':
          result.parent_category_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customization':
          result.customization.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'inventory_enabled':
          result.inventory_enabled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'available_quantity':
          result.available_quantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'minimum_quatity':
          result.minimum_quatity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_side_order':
          result.is_side_order = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_pickup':
          result.has_pickup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_delivery':
          result.has_delivery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'service_name':
          result.service_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logo_url':
          result.logo_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_multiple':
          result.is_multiple = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Service extends Service {
  @override
  final int id;
  @override
  final String service;
  @override
  final String provider_key;
  @override
  final String percentage_match;
  @override
  final String service_description;
  @override
  final String service_time;
  @override
  final String unit;
  @override
  final String multi_img_url;
  @override
  final String category_key;
  @override
  final String parent_category_key;
  @override
  final BuiltList<String> customization;
  @override
  final String inventory_enabled;
  @override
  final String available_quantity;
  @override
  final String minimum_quatity;
  @override
  final String is_side_order;
  @override
  final String has_pickup;
  @override
  final String has_delivery;
  @override
  final String service_name;
  @override
  final String currency;
  @override
  final String price;
  @override
  final String logo_url;
  @override
  final String is_multiple;

  factory _$Service([void Function(ServiceBuilder) updates]) =>
      (new ServiceBuilder()..update(updates)).build();

  _$Service._(
      {this.id,
      this.service,
      this.provider_key,
      this.percentage_match,
      this.service_description,
      this.service_time,
      this.unit,
      this.multi_img_url,
      this.category_key,
      this.parent_category_key,
      this.customization,
      this.inventory_enabled,
      this.available_quantity,
      this.minimum_quatity,
      this.is_side_order,
      this.has_pickup,
      this.has_delivery,
      this.service_name,
      this.currency,
      this.price,
      this.logo_url,
      this.is_multiple})
      : super._() {
    if (provider_key == null) {
      throw new BuiltValueNullFieldError('Service', 'provider_key');
    }
    if (inventory_enabled == null) {
      throw new BuiltValueNullFieldError('Service', 'inventory_enabled');
    }
  }

  @override
  Service rebuild(void Function(ServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceBuilder toBuilder() => new ServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Service &&
        id == other.id &&
        service == other.service &&
        provider_key == other.provider_key &&
        percentage_match == other.percentage_match &&
        service_description == other.service_description &&
        service_time == other.service_time &&
        unit == other.unit &&
        multi_img_url == other.multi_img_url &&
        category_key == other.category_key &&
        parent_category_key == other.parent_category_key &&
        customization == other.customization &&
        inventory_enabled == other.inventory_enabled &&
        available_quantity == other.available_quantity &&
        minimum_quatity == other.minimum_quatity &&
        is_side_order == other.is_side_order &&
        has_pickup == other.has_pickup &&
        has_delivery == other.has_delivery &&
        service_name == other.service_name &&
        currency == other.currency &&
        price == other.price &&
        logo_url == other.logo_url &&
        is_multiple == other.is_multiple;
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
                                                                            $jc($jc($jc($jc(0, id.hashCode), service.hashCode), provider_key.hashCode),
                                                                                percentage_match.hashCode),
                                                                            service_description.hashCode),
                                                                        service_time.hashCode),
                                                                    unit.hashCode),
                                                                multi_img_url.hashCode),
                                                            category_key.hashCode),
                                                        parent_category_key.hashCode),
                                                    customization.hashCode),
                                                inventory_enabled.hashCode),
                                            available_quantity.hashCode),
                                        minimum_quatity.hashCode),
                                    is_side_order.hashCode),
                                has_pickup.hashCode),
                            has_delivery.hashCode),
                        service_name.hashCode),
                    currency.hashCode),
                price.hashCode),
            logo_url.hashCode),
        is_multiple.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Service')
          ..add('id', id)
          ..add('service', service)
          ..add('provider_key', provider_key)
          ..add('percentage_match', percentage_match)
          ..add('service_description', service_description)
          ..add('service_time', service_time)
          ..add('unit', unit)
          ..add('multi_img_url', multi_img_url)
          ..add('category_key', category_key)
          ..add('parent_category_key', parent_category_key)
          ..add('customization', customization)
          ..add('inventory_enabled', inventory_enabled)
          ..add('available_quantity', available_quantity)
          ..add('minimum_quatity', minimum_quatity)
          ..add('is_side_order', is_side_order)
          ..add('has_pickup', has_pickup)
          ..add('has_delivery', has_delivery)
          ..add('service_name', service_name)
          ..add('currency', currency)
          ..add('price', price)
          ..add('logo_url', logo_url)
          ..add('is_multiple', is_multiple))
        .toString();
  }
}

class ServiceBuilder implements Builder<Service, ServiceBuilder> {
  _$Service _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _service;
  String get service => _$this._service;
  set service(String service) => _$this._service = service;

  String _provider_key;
  String get provider_key => _$this._provider_key;
  set provider_key(String provider_key) => _$this._provider_key = provider_key;

  String _percentage_match;
  String get percentage_match => _$this._percentage_match;
  set percentage_match(String percentage_match) =>
      _$this._percentage_match = percentage_match;

  String _service_description;
  String get service_description => _$this._service_description;
  set service_description(String service_description) =>
      _$this._service_description = service_description;

  String _service_time;
  String get service_time => _$this._service_time;
  set service_time(String service_time) => _$this._service_time = service_time;

  String _unit;
  String get unit => _$this._unit;
  set unit(String unit) => _$this._unit = unit;

  String _multi_img_url;
  String get multi_img_url => _$this._multi_img_url;
  set multi_img_url(String multi_img_url) =>
      _$this._multi_img_url = multi_img_url;

  String _category_key;
  String get category_key => _$this._category_key;
  set category_key(String category_key) => _$this._category_key = category_key;

  String _parent_category_key;
  String get parent_category_key => _$this._parent_category_key;
  set parent_category_key(String parent_category_key) =>
      _$this._parent_category_key = parent_category_key;

  ListBuilder<String> _customization;
  ListBuilder<String> get customization =>
      _$this._customization ??= new ListBuilder<String>();
  set customization(ListBuilder<String> customization) =>
      _$this._customization = customization;

  String _inventory_enabled;
  String get inventory_enabled => _$this._inventory_enabled;
  set inventory_enabled(String inventory_enabled) =>
      _$this._inventory_enabled = inventory_enabled;

  String _available_quantity;
  String get available_quantity => _$this._available_quantity;
  set available_quantity(String available_quantity) =>
      _$this._available_quantity = available_quantity;

  String _minimum_quatity;
  String get minimum_quatity => _$this._minimum_quatity;
  set minimum_quatity(String minimum_quatity) =>
      _$this._minimum_quatity = minimum_quatity;

  String _is_side_order;
  String get is_side_order => _$this._is_side_order;
  set is_side_order(String is_side_order) =>
      _$this._is_side_order = is_side_order;

  String _has_pickup;
  String get has_pickup => _$this._has_pickup;
  set has_pickup(String has_pickup) => _$this._has_pickup = has_pickup;

  String _has_delivery;
  String get has_delivery => _$this._has_delivery;
  set has_delivery(String has_delivery) => _$this._has_delivery = has_delivery;

  String _service_name;
  String get service_name => _$this._service_name;
  set service_name(String service_name) => _$this._service_name = service_name;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _logo_url;
  String get logo_url => _$this._logo_url;
  set logo_url(String logo_url) => _$this._logo_url = logo_url;

  String _is_multiple;
  String get is_multiple => _$this._is_multiple;
  set is_multiple(String is_multiple) => _$this._is_multiple = is_multiple;

  ServiceBuilder();

  ServiceBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _service = _$v.service;
      _provider_key = _$v.provider_key;
      _percentage_match = _$v.percentage_match;
      _service_description = _$v.service_description;
      _service_time = _$v.service_time;
      _unit = _$v.unit;
      _multi_img_url = _$v.multi_img_url;
      _category_key = _$v.category_key;
      _parent_category_key = _$v.parent_category_key;
      _customization = _$v.customization?.toBuilder();
      _inventory_enabled = _$v.inventory_enabled;
      _available_quantity = _$v.available_quantity;
      _minimum_quatity = _$v.minimum_quatity;
      _is_side_order = _$v.is_side_order;
      _has_pickup = _$v.has_pickup;
      _has_delivery = _$v.has_delivery;
      _service_name = _$v.service_name;
      _currency = _$v.currency;
      _price = _$v.price;
      _logo_url = _$v.logo_url;
      _is_multiple = _$v.is_multiple;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Service other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Service;
  }

  @override
  void update(void Function(ServiceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Service build() {
    _$Service _$result;
    try {
      _$result = _$v ??
          new _$Service._(
              id: id,
              service: service,
              provider_key: provider_key,
              percentage_match: percentage_match,
              service_description: service_description,
              service_time: service_time,
              unit: unit,
              multi_img_url: multi_img_url,
              category_key: category_key,
              parent_category_key: parent_category_key,
              customization: _customization?.build(),
              inventory_enabled: inventory_enabled,
              available_quantity: available_quantity,
              minimum_quatity: minimum_quatity,
              is_side_order: is_side_order,
              has_pickup: has_pickup,
              has_delivery: has_delivery,
              service_name: service_name,
              currency: currency,
              price: price,
              logo_url: logo_url,
              is_multiple: is_multiple);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'customization';
        _customization?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Service', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
