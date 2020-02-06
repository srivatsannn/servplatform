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
    final result = <Object>[];
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
        case 'percentage_match':
          result.percentage_match = serializers.deserialize(value,
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
  final String percentage_match;
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
      this.percentage_match,
      this.service_name,
      this.currency,
      this.price,
      this.logo_url,
      this.is_multiple})
      : super._();

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
        percentage_match == other.percentage_match &&
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
                        $jc($jc($jc(0, id.hashCode), service.hashCode),
                            percentage_match.hashCode),
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
          ..add('percentage_match', percentage_match)
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

  String _percentage_match;
  String get percentage_match => _$this._percentage_match;
  set percentage_match(String percentage_match) =>
      _$this._percentage_match = percentage_match;

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
      _percentage_match = _$v.percentage_match;
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
    final _$result = _$v ??
        new _$Service._(
            id: id,
            service: service,
            percentage_match: percentage_match,
            service_name: service_name,
            currency: currency,
            price: price,
            logo_url: logo_url,
            is_multiple: is_multiple);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
