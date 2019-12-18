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
      'service',
      serializers.serialize(object.service,
          specifiedType: const FullType(String)),
      'percentage_match',
      serializers.serialize(object.percentage_match,
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

  factory _$Service([void Function(ServiceBuilder) updates]) =>
      (new ServiceBuilder()..update(updates)).build();

  _$Service._({this.id, this.service, this.percentage_match}) : super._() {
    if (service == null) {
      throw new BuiltValueNullFieldError('Service', 'service');
    }
    if (percentage_match == null) {
      throw new BuiltValueNullFieldError('Service', 'percentage_match');
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
        percentage_match == other.percentage_match;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, id.hashCode), service.hashCode), percentage_match.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Service')
          ..add('id', id)
          ..add('service', service)
          ..add('percentage_match', percentage_match))
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

  ServiceBuilder();

  ServiceBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _service = _$v.service;
      _percentage_match = _$v.percentage_match;
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
            id: id, service: service, percentage_match: percentage_match);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
