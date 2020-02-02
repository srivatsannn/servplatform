// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Story> _$storySerializer = new _$StorySerializer();

class _$StorySerializer implements StructuredSerializer<Story> {
  @override
  final Iterable<Type> types = const [Story, _$Story];
  @override
  final String wireName = 'Story';

  @override
  Iterable<Object> serialize(Serializers serializers, Story object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'story_key',
      serializers.serialize(object.story_key,
          specifiedType: const FullType(String)),
      'multi_img_url',
      serializers.serialize(object.multi_img_url,
          specifiedType: const FullType(String)),
      'provider',
      serializers.serialize(object.provider,
          specifiedType: const FullType(String)),
      'service_key',
      serializers.serialize(object.service_key,
          specifiedType: const FullType(String)),
      'time_sec',
      serializers.serialize(object.time_sec,
          specifiedType: const FullType(String)),
      'claps',
      serializers.serialize(object.claps,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(String)),
      'publishedAt',
      serializers.serialize(object.publishedAt,
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
  Story deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoryBuilder();

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
        case 'story_key':
          result.story_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'multi_img_url':
          result.multi_img_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'provider':
          result.provider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'service_key':
          result.service_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time_sec':
          result.time_sec = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'claps':
          result.claps = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Story extends Story {
  @override
  final int id;
  @override
  final String story_key;
  @override
  final String multi_img_url;
  @override
  final String provider;
  @override
  final String service_key;
  @override
  final String time_sec;
  @override
  final String claps;
  @override
  final String user;
  @override
  final String publishedAt;

  factory _$Story([void Function(StoryBuilder) updates]) =>
      (new StoryBuilder()..update(updates)).build();

  _$Story._(
      {this.id,
      this.story_key,
      this.multi_img_url,
      this.provider,
      this.service_key,
      this.time_sec,
      this.claps,
      this.user,
      this.publishedAt})
      : super._() {
    if (story_key == null) {
      throw new BuiltValueNullFieldError('Story', 'story_key');
    }
    if (multi_img_url == null) {
      throw new BuiltValueNullFieldError('Story', 'multi_img_url');
    }
    if (provider == null) {
      throw new BuiltValueNullFieldError('Story', 'provider');
    }
    if (service_key == null) {
      throw new BuiltValueNullFieldError('Story', 'service_key');
    }
    if (time_sec == null) {
      throw new BuiltValueNullFieldError('Story', 'time_sec');
    }
    if (claps == null) {
      throw new BuiltValueNullFieldError('Story', 'claps');
    }
    if (user == null) {
      throw new BuiltValueNullFieldError('Story', 'user');
    }
    if (publishedAt == null) {
      throw new BuiltValueNullFieldError('Story', 'publishedAt');
    }
  }

  @override
  Story rebuild(void Function(StoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoryBuilder toBuilder() => new StoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Story &&
        id == other.id &&
        story_key == other.story_key &&
        multi_img_url == other.multi_img_url &&
        provider == other.provider &&
        service_key == other.service_key &&
        time_sec == other.time_sec &&
        claps == other.claps &&
        user == other.user &&
        publishedAt == other.publishedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), story_key.hashCode),
                                multi_img_url.hashCode),
                            provider.hashCode),
                        service_key.hashCode),
                    time_sec.hashCode),
                claps.hashCode),
            user.hashCode),
        publishedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Story')
          ..add('id', id)
          ..add('story_key', story_key)
          ..add('multi_img_url', multi_img_url)
          ..add('provider', provider)
          ..add('service_key', service_key)
          ..add('time_sec', time_sec)
          ..add('claps', claps)
          ..add('user', user)
          ..add('publishedAt', publishedAt))
        .toString();
  }
}

class StoryBuilder implements Builder<Story, StoryBuilder> {
  _$Story _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _story_key;
  String get story_key => _$this._story_key;
  set story_key(String story_key) => _$this._story_key = story_key;

  String _multi_img_url;
  String get multi_img_url => _$this._multi_img_url;
  set multi_img_url(String multi_img_url) =>
      _$this._multi_img_url = multi_img_url;

  String _provider;
  String get provider => _$this._provider;
  set provider(String provider) => _$this._provider = provider;

  String _service_key;
  String get service_key => _$this._service_key;
  set service_key(String service_key) => _$this._service_key = service_key;

  String _time_sec;
  String get time_sec => _$this._time_sec;
  set time_sec(String time_sec) => _$this._time_sec = time_sec;

  String _claps;
  String get claps => _$this._claps;
  set claps(String claps) => _$this._claps = claps;

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  String _publishedAt;
  String get publishedAt => _$this._publishedAt;
  set publishedAt(String publishedAt) => _$this._publishedAt = publishedAt;

  StoryBuilder();

  StoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _story_key = _$v.story_key;
      _multi_img_url = _$v.multi_img_url;
      _provider = _$v.provider;
      _service_key = _$v.service_key;
      _time_sec = _$v.time_sec;
      _claps = _$v.claps;
      _user = _$v.user;
      _publishedAt = _$v.publishedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Story other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Story;
  }

  @override
  void update(void Function(StoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Story build() {
    final _$result = _$v ??
        new _$Story._(
            id: id,
            story_key: story_key,
            multi_img_url: multi_img_url,
            provider: provider,
            service_key: service_key,
            time_sec: time_sec,
            claps: claps,
            user: user,
            publishedAt: publishedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
