// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Earning> _$earningSerializer = new _$EarningSerializer();

class _$EarningSerializer implements StructuredSerializer<Earning> {
  @override
  final Iterable<Type> types = const [Earning, _$Earning];
  @override
  final String wireName = 'Earning';

  @override
  Iterable<Object> serialize(Serializers serializers, Earning object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.type_agent != null) {
      result
        ..add('type_agent')
        ..add(serializers.serialize(object.type_agent,
            specifiedType: const FullType(String)));
    }
    if (object.today != null) {
      result
        ..add('today')
        ..add(serializers.serialize(object.today,
            specifiedType: const FullType(String)));
    }
    if (object.today_no_ofTrips_completed != null) {
      result
        ..add('today_no_ofTrips_completed')
        ..add(serializers.serialize(object.today_no_ofTrips_completed,
            specifiedType: const FullType(String)));
    }
    if (object.last_week != null) {
      result
        ..add('last_week')
        ..add(serializers.serialize(object.last_week,
            specifiedType: const FullType(String)));
    }
    if (object.today_no_oftrips_completed != null) {
      result
        ..add('today_no_oftrips_completed')
        ..add(serializers.serialize(object.today_no_oftrips_completed,
            specifiedType: const FullType(String)));
    }
    if (object.goal != null) {
      result
        ..add('goal')
        ..add(serializers.serialize(object.goal,
            specifiedType: const FullType(String)));
    }
    if (object.goal_descrpiton != null) {
      result
        ..add('goal_descrpiton')
        ..add(serializers.serialize(object.goal_descrpiton,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Earning deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EarningBuilder();

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
        case 'type_agent':
          result.type_agent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'today':
          result.today = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'today_no_ofTrips_completed':
          result.today_no_ofTrips_completed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_week':
          result.last_week = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'today_no_oftrips_completed':
          result.today_no_oftrips_completed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'goal':
          result.goal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'goal_descrpiton':
          result.goal_descrpiton = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Earning extends Earning {
  @override
  final int id;
  @override
  final String type_agent;
  @override
  final String today;
  @override
  final String today_no_ofTrips_completed;
  @override
  final String last_week;
  @override
  final String today_no_oftrips_completed;
  @override
  final String goal;
  @override
  final String goal_descrpiton;

  factory _$Earning([void Function(EarningBuilder) updates]) =>
      (new EarningBuilder()..update(updates)).build();

  _$Earning._(
      {this.id,
      this.type_agent,
      this.today,
      this.today_no_ofTrips_completed,
      this.last_week,
      this.today_no_oftrips_completed,
      this.goal,
      this.goal_descrpiton})
      : super._();

  @override
  Earning rebuild(void Function(EarningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EarningBuilder toBuilder() => new EarningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Earning &&
        id == other.id &&
        type_agent == other.type_agent &&
        today == other.today &&
        today_no_ofTrips_completed == other.today_no_ofTrips_completed &&
        last_week == other.last_week &&
        today_no_oftrips_completed == other.today_no_oftrips_completed &&
        goal == other.goal &&
        goal_descrpiton == other.goal_descrpiton;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), type_agent.hashCode),
                            today.hashCode),
                        today_no_ofTrips_completed.hashCode),
                    last_week.hashCode),
                today_no_oftrips_completed.hashCode),
            goal.hashCode),
        goal_descrpiton.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Earning')
          ..add('id', id)
          ..add('type_agent', type_agent)
          ..add('today', today)
          ..add('today_no_ofTrips_completed', today_no_ofTrips_completed)
          ..add('last_week', last_week)
          ..add('today_no_oftrips_completed', today_no_oftrips_completed)
          ..add('goal', goal)
          ..add('goal_descrpiton', goal_descrpiton))
        .toString();
  }
}

class EarningBuilder implements Builder<Earning, EarningBuilder> {
  _$Earning _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type_agent;
  String get type_agent => _$this._type_agent;
  set type_agent(String type_agent) => _$this._type_agent = type_agent;

  String _today;
  String get today => _$this._today;
  set today(String today) => _$this._today = today;

  String _today_no_ofTrips_completed;
  String get today_no_ofTrips_completed => _$this._today_no_ofTrips_completed;
  set today_no_ofTrips_completed(String today_no_ofTrips_completed) =>
      _$this._today_no_ofTrips_completed = today_no_ofTrips_completed;

  String _last_week;
  String get last_week => _$this._last_week;
  set last_week(String last_week) => _$this._last_week = last_week;

  String _today_no_oftrips_completed;
  String get today_no_oftrips_completed => _$this._today_no_oftrips_completed;
  set today_no_oftrips_completed(String today_no_oftrips_completed) =>
      _$this._today_no_oftrips_completed = today_no_oftrips_completed;

  String _goal;
  String get goal => _$this._goal;
  set goal(String goal) => _$this._goal = goal;

  String _goal_descrpiton;
  String get goal_descrpiton => _$this._goal_descrpiton;
  set goal_descrpiton(String goal_descrpiton) =>
      _$this._goal_descrpiton = goal_descrpiton;

  EarningBuilder();

  EarningBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type_agent = _$v.type_agent;
      _today = _$v.today;
      _today_no_ofTrips_completed = _$v.today_no_ofTrips_completed;
      _last_week = _$v.last_week;
      _today_no_oftrips_completed = _$v.today_no_oftrips_completed;
      _goal = _$v.goal;
      _goal_descrpiton = _$v.goal_descrpiton;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Earning other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Earning;
  }

  @override
  void update(void Function(EarningBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Earning build() {
    final _$result = _$v ??
        new _$Earning._(
            id: id,
            type_agent: type_agent,
            today: today,
            today_no_ofTrips_completed: today_no_ofTrips_completed,
            last_week: last_week,
            today_no_oftrips_completed: today_no_oftrips_completed,
            goal: goal,
            goal_descrpiton: goal_descrpiton);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
