// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Chat> _$chatSerializer = new _$ChatSerializer();

class _$ChatSerializer implements StructuredSerializer<Chat> {
  @override
  final Iterable<Type> types = const [Chat, _$Chat];
  @override
  final String wireName = 'Chat';

  @override
  Iterable<Object> serialize(Serializers serializers, Chat object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.from != null) {
      result
        ..add('from')
        ..add(serializers.serialize(object.from,
            specifiedType: const FullType(String)));
    }
    if (object.to != null) {
      result
        ..add('to')
        ..add(serializers.serialize(object.to,
            specifiedType: const FullType(String)));
    }
    if (object.isSeen != null) {
      result
        ..add('isSeen')
        ..add(serializers.serialize(object.isSeen,
            specifiedType: const FullType(String)));
    }
    if (object.publishedAt != null) {
      result
        ..add('publishedAt')
        ..add(serializers.serialize(object.publishedAt,
            specifiedType: const FullType(String)));
    }
    if (object.groupId != null) {
      result
        ..add('groupId')
        ..add(serializers.serialize(object.groupId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Chat deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isSeen':
          result.isSeen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Chat extends Chat {
  @override
  final int id;
  @override
  final String text;
  @override
  final String type;
  @override
  final String content;
  @override
  final String from;
  @override
  final String to;
  @override
  final String isSeen;
  @override
  final String publishedAt;
  @override
  final String groupId;

  factory _$Chat([void Function(ChatBuilder) updates]) =>
      (new ChatBuilder()..update(updates)).build();

  _$Chat._(
      {this.id,
      this.text,
      this.type,
      this.content,
      this.from,
      this.to,
      this.isSeen,
      this.publishedAt,
      this.groupId})
      : super._();

  @override
  Chat rebuild(void Function(ChatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatBuilder toBuilder() => new ChatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chat &&
        id == other.id &&
        text == other.text &&
        type == other.type &&
        content == other.content &&
        from == other.from &&
        to == other.to &&
        isSeen == other.isSeen &&
        publishedAt == other.publishedAt &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), text.hashCode),
                                type.hashCode),
                            content.hashCode),
                        from.hashCode),
                    to.hashCode),
                isSeen.hashCode),
            publishedAt.hashCode),
        groupId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chat')
          ..add('id', id)
          ..add('text', text)
          ..add('type', type)
          ..add('content', content)
          ..add('from', from)
          ..add('to', to)
          ..add('isSeen', isSeen)
          ..add('publishedAt', publishedAt)
          ..add('groupId', groupId))
        .toString();
  }
}

class ChatBuilder implements Builder<Chat, ChatBuilder> {
  _$Chat _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _from;
  String get from => _$this._from;
  set from(String from) => _$this._from = from;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  String _isSeen;
  String get isSeen => _$this._isSeen;
  set isSeen(String isSeen) => _$this._isSeen = isSeen;

  String _publishedAt;
  String get publishedAt => _$this._publishedAt;
  set publishedAt(String publishedAt) => _$this._publishedAt = publishedAt;

  String _groupId;
  String get groupId => _$this._groupId;
  set groupId(String groupId) => _$this._groupId = groupId;

  ChatBuilder();

  ChatBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _text = _$v.text;
      _type = _$v.type;
      _content = _$v.content;
      _from = _$v.from;
      _to = _$v.to;
      _isSeen = _$v.isSeen;
      _publishedAt = _$v.publishedAt;
      _groupId = _$v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chat other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Chat;
  }

  @override
  void update(void Function(ChatBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Chat build() {
    final _$result = _$v ??
        new _$Chat._(
            id: id,
            text: text,
            type: type,
            content: content,
            from: from,
            to: to,
            isSeen: isSeen,
            publishedAt: publishedAt,
            groupId: groupId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
