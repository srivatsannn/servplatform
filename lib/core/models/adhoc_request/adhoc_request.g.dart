// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adhoc_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdhocRequest> _$adhocRequestSerializer =
    new _$AdhocRequestSerializer();

class _$AdhocRequestSerializer implements StructuredSerializer<AdhocRequest> {
  @override
  final Iterable<Type> types = const [AdhocRequest, _$AdhocRequest];
  @override
  final String wireName = 'AdhocRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, AdhocRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.user_key != null) {
      result
        ..add('user_key')
        ..add(serializers.serialize(object.user_key,
            specifiedType: const FullType(String)));
    }
    if (object.request_title != null) {
      result
        ..add('request_title')
        ..add(serializers.serialize(object.request_title,
            specifiedType: const FullType(String)));
    }
    if (object.request_description != null) {
      result
        ..add('request_description')
        ..add(serializers.serialize(object.request_description,
            specifiedType: const FullType(String)));
    }
    if (object.created_at != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.created_at,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.story_key != null) {
      result
        ..add('story_key')
        ..add(serializers.serialize(object.story_key,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AdhocRequest deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdhocRequestBuilder();

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
        case 'user_key':
          result.user_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request_title':
          result.request_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request_description':
          result.request_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'story_key':
          result.story_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AdhocRequest extends AdhocRequest {
  @override
  final int id;
  @override
  final String user_key;
  @override
  final String request_title;
  @override
  final String request_description;
  @override
  final String created_at;
  @override
  final String status;
  @override
  final String story_key;

  factory _$AdhocRequest([void Function(AdhocRequestBuilder) updates]) =>
      (new AdhocRequestBuilder()..update(updates)).build();

  _$AdhocRequest._(
      {this.id,
      this.user_key,
      this.request_title,
      this.request_description,
      this.created_at,
      this.status,
      this.story_key})
      : super._();

  @override
  AdhocRequest rebuild(void Function(AdhocRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdhocRequestBuilder toBuilder() => new AdhocRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdhocRequest &&
        id == other.id &&
        user_key == other.user_key &&
        request_title == other.request_title &&
        request_description == other.request_description &&
        created_at == other.created_at &&
        status == other.status &&
        story_key == other.story_key;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), user_key.hashCode),
                        request_title.hashCode),
                    request_description.hashCode),
                created_at.hashCode),
            status.hashCode),
        story_key.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdhocRequest')
          ..add('id', id)
          ..add('user_key', user_key)
          ..add('request_title', request_title)
          ..add('request_description', request_description)
          ..add('created_at', created_at)
          ..add('status', status)
          ..add('story_key', story_key))
        .toString();
  }
}

class AdhocRequestBuilder
    implements Builder<AdhocRequest, AdhocRequestBuilder> {
  _$AdhocRequest _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _user_key;
  String get user_key => _$this._user_key;
  set user_key(String user_key) => _$this._user_key = user_key;

  String _request_title;
  String get request_title => _$this._request_title;
  set request_title(String request_title) =>
      _$this._request_title = request_title;

  String _request_description;
  String get request_description => _$this._request_description;
  set request_description(String request_description) =>
      _$this._request_description = request_description;

  String _created_at;
  String get created_at => _$this._created_at;
  set created_at(String created_at) => _$this._created_at = created_at;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _story_key;
  String get story_key => _$this._story_key;
  set story_key(String story_key) => _$this._story_key = story_key;

  AdhocRequestBuilder();

  AdhocRequestBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _user_key = _$v.user_key;
      _request_title = _$v.request_title;
      _request_description = _$v.request_description;
      _created_at = _$v.created_at;
      _status = _$v.status;
      _story_key = _$v.story_key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdhocRequest other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AdhocRequest;
  }

  @override
  void update(void Function(AdhocRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdhocRequest build() {
    final _$result = _$v ??
        new _$AdhocRequest._(
            id: id,
            user_key: user_key,
            request_title: request_title,
            request_description: request_description,
            created_at: created_at,
            status: status,
            story_key: story_key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
