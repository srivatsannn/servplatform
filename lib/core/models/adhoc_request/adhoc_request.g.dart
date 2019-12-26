// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adhoc_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Adhoc_request> _$adhocRequestSerializer =
    new _$Adhoc_requestSerializer();

class _$Adhoc_requestSerializer implements StructuredSerializer<Adhoc_request> {
  @override
  final Iterable<Type> types = const [Adhoc_request, _$Adhoc_request];
  @override
  final String wireName = 'Adhoc_request';

  @override
  Iterable<Object> serialize(Serializers serializers, Adhoc_request object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'user_key',
      serializers.serialize(object.user_key,
          specifiedType: const FullType(String)),
      'request_title',
      serializers.serialize(object.request_title,
          specifiedType: const FullType(String)),
      'request_description',
      serializers.serialize(object.request_description,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'story_key',
      serializers.serialize(object.story_key,
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
  Adhoc_request deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Adhoc_requestBuilder();

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

class _$Adhoc_request extends Adhoc_request {
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

  factory _$Adhoc_request([void Function(Adhoc_requestBuilder) updates]) =>
      (new Adhoc_requestBuilder()..update(updates)).build();

  _$Adhoc_request._(
      {this.id,
      this.user_key,
      this.request_title,
      this.request_description,
      this.created_at,
      this.status,
      this.story_key})
      : super._() {
    if (user_key == null) {
      throw new BuiltValueNullFieldError('Adhoc_request', 'user_key');
    }
    if (request_title == null) {
      throw new BuiltValueNullFieldError('Adhoc_request', 'request_title');
    }
    if (request_description == null) {
      throw new BuiltValueNullFieldError(
          'Adhoc_request', 'request_description');
    }
    if (created_at == null) {
      throw new BuiltValueNullFieldError('Adhoc_request', 'created_at');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Adhoc_request', 'status');
    }
    if (story_key == null) {
      throw new BuiltValueNullFieldError('Adhoc_request', 'story_key');
    }
  }

  @override
  Adhoc_request rebuild(void Function(Adhoc_requestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Adhoc_requestBuilder toBuilder() => new Adhoc_requestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Adhoc_request &&
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
    return (newBuiltValueToStringHelper('Adhoc_request')
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

class Adhoc_requestBuilder
    implements Builder<Adhoc_request, Adhoc_requestBuilder> {
  _$Adhoc_request _$v;

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

  Adhoc_requestBuilder();

  Adhoc_requestBuilder get _$this {
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
  void replace(Adhoc_request other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Adhoc_request;
  }

  @override
  void update(void Function(Adhoc_requestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Adhoc_request build() {
    final _$result = _$v ??
        new _$Adhoc_request._(
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
