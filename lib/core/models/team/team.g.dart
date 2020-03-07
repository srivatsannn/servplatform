// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Team> _$teamSerializer = new _$TeamSerializer();

class _$TeamSerializer implements StructuredSerializer<Team> {
  @override
  final Iterable<Type> types = const [Team, _$Team];
  @override
  final String wireName = 'Team';

  @override
  Iterable<Object> serialize(Serializers serializers, Team object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.team_name != null) {
      result
        ..add('team_name')
        ..add(serializers.serialize(object.team_name,
            specifiedType: const FullType(String)));
    }
    if (object.agents != null) {
      result
        ..add('agents')
        ..add(serializers.serialize(object.agents,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.battery_usage != null) {
      result
        ..add('battery_usage')
        ..add(serializers.serialize(object.battery_usage,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType: const FullType(String)));
    }
    if (object.capacity != null) {
      result
        ..add('capacity')
        ..add(serializers.serialize(object.capacity,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.speed != null) {
      result
        ..add('speed')
        ..add(serializers.serialize(object.speed,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Team deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamBuilder();

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
        case 'team_name':
          result.team_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'agents':
          result.agents.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'battery_usage':
          result.battery_usage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'capacity':
          result.capacity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Team extends Team {
  @override
  final int id;
  @override
  final String team_name;
  @override
  final BuiltList<String> agents;
  @override
  final String battery_usage;
  @override
  final String tags;
  @override
  final String capacity;
  @override
  final String type;
  @override
  final String speed;

  factory _$Team([void Function(TeamBuilder) updates]) =>
      (new TeamBuilder()..update(updates)).build();

  _$Team._(
      {this.id,
      this.team_name,
      this.agents,
      this.battery_usage,
      this.tags,
      this.capacity,
      this.type,
      this.speed})
      : super._();

  @override
  Team rebuild(void Function(TeamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamBuilder toBuilder() => new TeamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Team &&
        id == other.id &&
        team_name == other.team_name &&
        agents == other.agents &&
        battery_usage == other.battery_usage &&
        tags == other.tags &&
        capacity == other.capacity &&
        type == other.type &&
        speed == other.speed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), team_name.hashCode),
                            agents.hashCode),
                        battery_usage.hashCode),
                    tags.hashCode),
                capacity.hashCode),
            type.hashCode),
        speed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Team')
          ..add('id', id)
          ..add('team_name', team_name)
          ..add('agents', agents)
          ..add('battery_usage', battery_usage)
          ..add('tags', tags)
          ..add('capacity', capacity)
          ..add('type', type)
          ..add('speed', speed))
        .toString();
  }
}

class TeamBuilder implements Builder<Team, TeamBuilder> {
  _$Team _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _team_name;
  String get team_name => _$this._team_name;
  set team_name(String team_name) => _$this._team_name = team_name;

  ListBuilder<String> _agents;
  ListBuilder<String> get agents =>
      _$this._agents ??= new ListBuilder<String>();
  set agents(ListBuilder<String> agents) => _$this._agents = agents;

  String _battery_usage;
  String get battery_usage => _$this._battery_usage;
  set battery_usage(String battery_usage) =>
      _$this._battery_usage = battery_usage;

  String _tags;
  String get tags => _$this._tags;
  set tags(String tags) => _$this._tags = tags;

  String _capacity;
  String get capacity => _$this._capacity;
  set capacity(String capacity) => _$this._capacity = capacity;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _speed;
  String get speed => _$this._speed;
  set speed(String speed) => _$this._speed = speed;

  TeamBuilder();

  TeamBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _team_name = _$v.team_name;
      _agents = _$v.agents?.toBuilder();
      _battery_usage = _$v.battery_usage;
      _tags = _$v.tags;
      _capacity = _$v.capacity;
      _type = _$v.type;
      _speed = _$v.speed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Team other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Team;
  }

  @override
  void update(void Function(TeamBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Team build() {
    _$Team _$result;
    try {
      _$result = _$v ??
          new _$Team._(
              id: id,
              team_name: team_name,
              agents: _agents?.build(),
              battery_usage: battery_usage,
              tags: tags,
              capacity: capacity,
              type: type,
              speed: speed);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'agents';
        _agents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Team', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
