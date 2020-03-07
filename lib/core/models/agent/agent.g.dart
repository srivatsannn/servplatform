// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Agent> _$agentSerializer = new _$AgentSerializer();

class _$AgentSerializer implements StructuredSerializer<Agent> {
  @override
  final Iterable<Type> types = const [Agent, _$Agent];
  @override
  final String wireName = 'Agent';

  @override
  Iterable<Object> serialize(Serializers serializers, Agent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.agent_key != null) {
      result
        ..add('agent_key')
        ..add(serializers.serialize(object.agent_key,
            specifiedType: const FullType(String)));
    }
    if (object.user_key != null) {
      result
        ..add('user_key')
        ..add(serializers.serialize(object.user_key,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.first_name != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(object.first_name,
            specifiedType: const FullType(String)));
    }
    if (object.last_name != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(object.last_name,
            specifiedType: const FullType(String)));
    }
    if (object.current_location != null) {
      result
        ..add('current_location')
        ..add(serializers.serialize(object.current_location,
            specifiedType: const FullType(String)));
    }
    if (object.geofence != null) {
      result
        ..add('geofence')
        ..add(serializers.serialize(object.geofence,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.is_verified != null) {
      result
        ..add('is_verified')
        ..add(serializers.serialize(object.is_verified,
            specifiedType: const FullType(String)));
    }
    if (object.team_key != null) {
      result
        ..add('team_key')
        ..add(serializers.serialize(object.team_key,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.fleet_id != null) {
      result
        ..add('fleet_id')
        ..add(serializers.serialize(object.fleet_id,
            specifiedType: const FullType(String)));
    }
    if (object.transport_type != null) {
      result
        ..add('transport_type')
        ..add(serializers.serialize(object.transport_type,
            specifiedType: const FullType(String)));
    }
    if (object.transport_desc != null) {
      result
        ..add('transport_desc')
        ..add(serializers.serialize(object.transport_desc,
            specifiedType: const FullType(String)));
    }
    if (object.license != null) {
      result
        ..add('license')
        ..add(serializers.serialize(object.license,
            specifiedType: const FullType(String)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.min_visits != null) {
      result
        ..add('min_visits')
        ..add(serializers.serialize(object.min_visits,
            specifiedType: const FullType(String)));
    }
    if (object.capacity != null) {
      result
        ..add('capacity')
        ..add(serializers.serialize(object.capacity,
            specifiedType: const FullType(String)));
    }
    if (object.payment != null) {
      result
        ..add('payment')
        ..add(serializers.serialize(object.payment,
            specifiedType: const FullType(String)));
    }
    if (object.recommended_merchants_to_join != null) {
      result
        ..add('recommended_merchants_to_join')
        ..add(serializers.serialize(object.recommended_merchants_to_join,
            specifiedType: const FullType(String)));
    }
    if (object.recommended_promotions != null) {
      result
        ..add('recommended_promotions')
        ..add(serializers.serialize(object.recommended_promotions,
            specifiedType: const FullType(String)));
    }
    if (object.user_id != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.user_id,
            specifiedType: const FullType(String)));
    }
    if (object.own_a_vehicle != null) {
      result
        ..add('own_a_vehicle')
        ..add(serializers.serialize(object.own_a_vehicle,
            specifiedType: const FullType(String)));
    }
    if (object.own_a_space != null) {
      result
        ..add('own_a_space')
        ..add(serializers.serialize(object.own_a_space,
            specifiedType: const FullType(String)));
    }
    if (object.team_id != null) {
      result
        ..add('team_id')
        ..add(serializers.serialize(object.team_id,
            specifiedType: const FullType(String)));
    }
    if (object.rule_id != null) {
      result
        ..add('rule_id')
        ..add(serializers.serialize(object.rule_id,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.limit != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(object.limit,
            specifiedType: const FullType(String)));
    }
    if (object.block_status != null) {
      result
        ..add('block_status')
        ..add(serializers.serialize(object.block_status,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.skills != null) {
      result
        ..add('skills')
        ..add(serializers.serialize(object.skills,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.availability != null) {
      result
        ..add('availability')
        ..add(serializers.serialize(object.availability,
            specifiedType: const FullType(String)));
    }
    if (object.earnings != null) {
      result
        ..add('earnings')
        ..add(serializers.serialize(object.earnings,
            specifiedType: const FullType(String)));
    }
    if (object.providers != null) {
      result
        ..add('providers')
        ..add(serializers.serialize(object.providers,
            specifiedType: const FullType(String)));
    }
    if (object.pending_proifle_steps != null) {
      result
        ..add('pending_proifle_steps')
        ..add(serializers.serialize(object.pending_proifle_steps,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Agent deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AgentBuilder();

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
        case 'agent_key':
          result.agent_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_key':
          result.user_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_name':
          result.first_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_name':
          result.last_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_location':
          result.current_location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'geofence':
          result.geofence = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_verified':
          result.is_verified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'team_key':
          result.team_key.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'fleet_id':
          result.fleet_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transport_type':
          result.transport_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transport_desc':
          result.transport_desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'license':
          result.license = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'min_visits':
          result.min_visits = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'capacity':
          result.capacity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payment':
          result.payment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recommended_merchants_to_join':
          result.recommended_merchants_to_join = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recommended_promotions':
          result.recommended_promotions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_id':
          result.user_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'own_a_vehicle':
          result.own_a_vehicle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'own_a_space':
          result.own_a_space = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'team_id':
          result.team_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rule_id':
          result.rule_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'block_status':
          result.block_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skills':
          result.skills.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'availability':
          result.availability = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'earnings':
          result.earnings = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'providers':
          result.providers = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pending_proifle_steps':
          result.pending_proifle_steps = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Agent extends Agent {
  @override
  final int id;
  @override
  final String agent_key;
  @override
  final String user_key;
  @override
  final String username;
  @override
  final String password;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String current_location;
  @override
  final String geofence;
  @override
  final String status;
  @override
  final String is_verified;
  @override
  final BuiltList<String> team_key;
  @override
  final BuiltList<String> tags;
  @override
  final String fleet_id;
  @override
  final String transport_type;
  @override
  final String transport_desc;
  @override
  final String license;
  @override
  final String color;
  @override
  final String url;
  @override
  final String min_visits;
  @override
  final String capacity;
  @override
  final String payment;
  @override
  final String recommended_merchants_to_join;
  @override
  final String recommended_promotions;
  @override
  final String user_id;
  @override
  final String own_a_vehicle;
  @override
  final String own_a_space;
  @override
  final String team_id;
  @override
  final String rule_id;
  @override
  final String date;
  @override
  final String limit;
  @override
  final String block_status;
  @override
  final String message;
  @override
  final BuiltList<String> skills;
  @override
  final String availability;
  @override
  final String earnings;
  @override
  final String providers;
  @override
  final String pending_proifle_steps;

  factory _$Agent([void Function(AgentBuilder) updates]) =>
      (new AgentBuilder()..update(updates)).build();

  _$Agent._(
      {this.id,
      this.agent_key,
      this.user_key,
      this.username,
      this.password,
      this.phone,
      this.email,
      this.first_name,
      this.last_name,
      this.current_location,
      this.geofence,
      this.status,
      this.is_verified,
      this.team_key,
      this.tags,
      this.fleet_id,
      this.transport_type,
      this.transport_desc,
      this.license,
      this.color,
      this.url,
      this.min_visits,
      this.capacity,
      this.payment,
      this.recommended_merchants_to_join,
      this.recommended_promotions,
      this.user_id,
      this.own_a_vehicle,
      this.own_a_space,
      this.team_id,
      this.rule_id,
      this.date,
      this.limit,
      this.block_status,
      this.message,
      this.skills,
      this.availability,
      this.earnings,
      this.providers,
      this.pending_proifle_steps})
      : super._();

  @override
  Agent rebuild(void Function(AgentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentBuilder toBuilder() => new AgentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Agent &&
        id == other.id &&
        agent_key == other.agent_key &&
        user_key == other.user_key &&
        username == other.username &&
        password == other.password &&
        phone == other.phone &&
        email == other.email &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        current_location == other.current_location &&
        geofence == other.geofence &&
        status == other.status &&
        is_verified == other.is_verified &&
        team_key == other.team_key &&
        tags == other.tags &&
        fleet_id == other.fleet_id &&
        transport_type == other.transport_type &&
        transport_desc == other.transport_desc &&
        license == other.license &&
        color == other.color &&
        url == other.url &&
        min_visits == other.min_visits &&
        capacity == other.capacity &&
        payment == other.payment &&
        recommended_merchants_to_join == other.recommended_merchants_to_join &&
        recommended_promotions == other.recommended_promotions &&
        user_id == other.user_id &&
        own_a_vehicle == other.own_a_vehicle &&
        own_a_space == other.own_a_space &&
        team_id == other.team_id &&
        rule_id == other.rule_id &&
        date == other.date &&
        limit == other.limit &&
        block_status == other.block_status &&
        message == other.message &&
        skills == other.skills &&
        availability == other.availability &&
        earnings == other.earnings &&
        providers == other.providers &&
        pending_proifle_steps == other.pending_proifle_steps;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), agent_key.hashCode), user_key.hashCode), username.hashCode), password.hashCode), phone.hashCode), email.hashCode), first_name.hashCode), last_name.hashCode), current_location.hashCode), geofence.hashCode), status.hashCode), is_verified.hashCode), team_key.hashCode), tags.hashCode), fleet_id.hashCode), transport_type.hashCode), transport_desc.hashCode), license.hashCode), color.hashCode), url.hashCode),
                                                                                min_visits.hashCode),
                                                                            capacity.hashCode),
                                                                        payment.hashCode),
                                                                    recommended_merchants_to_join.hashCode),
                                                                recommended_promotions.hashCode),
                                                            user_id.hashCode),
                                                        own_a_vehicle.hashCode),
                                                    own_a_space.hashCode),
                                                team_id.hashCode),
                                            rule_id.hashCode),
                                        date.hashCode),
                                    limit.hashCode),
                                block_status.hashCode),
                            message.hashCode),
                        skills.hashCode),
                    availability.hashCode),
                earnings.hashCode),
            providers.hashCode),
        pending_proifle_steps.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Agent')
          ..add('id', id)
          ..add('agent_key', agent_key)
          ..add('user_key', user_key)
          ..add('username', username)
          ..add('password', password)
          ..add('phone', phone)
          ..add('email', email)
          ..add('first_name', first_name)
          ..add('last_name', last_name)
          ..add('current_location', current_location)
          ..add('geofence', geofence)
          ..add('status', status)
          ..add('is_verified', is_verified)
          ..add('team_key', team_key)
          ..add('tags', tags)
          ..add('fleet_id', fleet_id)
          ..add('transport_type', transport_type)
          ..add('transport_desc', transport_desc)
          ..add('license', license)
          ..add('color', color)
          ..add('url', url)
          ..add('min_visits', min_visits)
          ..add('capacity', capacity)
          ..add('payment', payment)
          ..add('recommended_merchants_to_join', recommended_merchants_to_join)
          ..add('recommended_promotions', recommended_promotions)
          ..add('user_id', user_id)
          ..add('own_a_vehicle', own_a_vehicle)
          ..add('own_a_space', own_a_space)
          ..add('team_id', team_id)
          ..add('rule_id', rule_id)
          ..add('date', date)
          ..add('limit', limit)
          ..add('block_status', block_status)
          ..add('message', message)
          ..add('skills', skills)
          ..add('availability', availability)
          ..add('earnings', earnings)
          ..add('providers', providers)
          ..add('pending_proifle_steps', pending_proifle_steps))
        .toString();
  }
}

class AgentBuilder implements Builder<Agent, AgentBuilder> {
  _$Agent _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _agent_key;
  String get agent_key => _$this._agent_key;
  set agent_key(String agent_key) => _$this._agent_key = agent_key;

  String _user_key;
  String get user_key => _$this._user_key;
  set user_key(String user_key) => _$this._user_key = user_key;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _first_name;
  String get first_name => _$this._first_name;
  set first_name(String first_name) => _$this._first_name = first_name;

  String _last_name;
  String get last_name => _$this._last_name;
  set last_name(String last_name) => _$this._last_name = last_name;

  String _current_location;
  String get current_location => _$this._current_location;
  set current_location(String current_location) =>
      _$this._current_location = current_location;

  String _geofence;
  String get geofence => _$this._geofence;
  set geofence(String geofence) => _$this._geofence = geofence;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _is_verified;
  String get is_verified => _$this._is_verified;
  set is_verified(String is_verified) => _$this._is_verified = is_verified;

  ListBuilder<String> _team_key;
  ListBuilder<String> get team_key =>
      _$this._team_key ??= new ListBuilder<String>();
  set team_key(ListBuilder<String> team_key) => _$this._team_key = team_key;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  String _fleet_id;
  String get fleet_id => _$this._fleet_id;
  set fleet_id(String fleet_id) => _$this._fleet_id = fleet_id;

  String _transport_type;
  String get transport_type => _$this._transport_type;
  set transport_type(String transport_type) =>
      _$this._transport_type = transport_type;

  String _transport_desc;
  String get transport_desc => _$this._transport_desc;
  set transport_desc(String transport_desc) =>
      _$this._transport_desc = transport_desc;

  String _license;
  String get license => _$this._license;
  set license(String license) => _$this._license = license;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _min_visits;
  String get min_visits => _$this._min_visits;
  set min_visits(String min_visits) => _$this._min_visits = min_visits;

  String _capacity;
  String get capacity => _$this._capacity;
  set capacity(String capacity) => _$this._capacity = capacity;

  String _payment;
  String get payment => _$this._payment;
  set payment(String payment) => _$this._payment = payment;

  String _recommended_merchants_to_join;
  String get recommended_merchants_to_join =>
      _$this._recommended_merchants_to_join;
  set recommended_merchants_to_join(String recommended_merchants_to_join) =>
      _$this._recommended_merchants_to_join = recommended_merchants_to_join;

  String _recommended_promotions;
  String get recommended_promotions => _$this._recommended_promotions;
  set recommended_promotions(String recommended_promotions) =>
      _$this._recommended_promotions = recommended_promotions;

  String _user_id;
  String get user_id => _$this._user_id;
  set user_id(String user_id) => _$this._user_id = user_id;

  String _own_a_vehicle;
  String get own_a_vehicle => _$this._own_a_vehicle;
  set own_a_vehicle(String own_a_vehicle) =>
      _$this._own_a_vehicle = own_a_vehicle;

  String _own_a_space;
  String get own_a_space => _$this._own_a_space;
  set own_a_space(String own_a_space) => _$this._own_a_space = own_a_space;

  String _team_id;
  String get team_id => _$this._team_id;
  set team_id(String team_id) => _$this._team_id = team_id;

  String _rule_id;
  String get rule_id => _$this._rule_id;
  set rule_id(String rule_id) => _$this._rule_id = rule_id;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _limit;
  String get limit => _$this._limit;
  set limit(String limit) => _$this._limit = limit;

  String _block_status;
  String get block_status => _$this._block_status;
  set block_status(String block_status) => _$this._block_status = block_status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<String> _skills;
  ListBuilder<String> get skills =>
      _$this._skills ??= new ListBuilder<String>();
  set skills(ListBuilder<String> skills) => _$this._skills = skills;

  String _availability;
  String get availability => _$this._availability;
  set availability(String availability) => _$this._availability = availability;

  String _earnings;
  String get earnings => _$this._earnings;
  set earnings(String earnings) => _$this._earnings = earnings;

  String _providers;
  String get providers => _$this._providers;
  set providers(String providers) => _$this._providers = providers;

  String _pending_proifle_steps;
  String get pending_proifle_steps => _$this._pending_proifle_steps;
  set pending_proifle_steps(String pending_proifle_steps) =>
      _$this._pending_proifle_steps = pending_proifle_steps;

  AgentBuilder();

  AgentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _agent_key = _$v.agent_key;
      _user_key = _$v.user_key;
      _username = _$v.username;
      _password = _$v.password;
      _phone = _$v.phone;
      _email = _$v.email;
      _first_name = _$v.first_name;
      _last_name = _$v.last_name;
      _current_location = _$v.current_location;
      _geofence = _$v.geofence;
      _status = _$v.status;
      _is_verified = _$v.is_verified;
      _team_key = _$v.team_key?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _fleet_id = _$v.fleet_id;
      _transport_type = _$v.transport_type;
      _transport_desc = _$v.transport_desc;
      _license = _$v.license;
      _color = _$v.color;
      _url = _$v.url;
      _min_visits = _$v.min_visits;
      _capacity = _$v.capacity;
      _payment = _$v.payment;
      _recommended_merchants_to_join = _$v.recommended_merchants_to_join;
      _recommended_promotions = _$v.recommended_promotions;
      _user_id = _$v.user_id;
      _own_a_vehicle = _$v.own_a_vehicle;
      _own_a_space = _$v.own_a_space;
      _team_id = _$v.team_id;
      _rule_id = _$v.rule_id;
      _date = _$v.date;
      _limit = _$v.limit;
      _block_status = _$v.block_status;
      _message = _$v.message;
      _skills = _$v.skills?.toBuilder();
      _availability = _$v.availability;
      _earnings = _$v.earnings;
      _providers = _$v.providers;
      _pending_proifle_steps = _$v.pending_proifle_steps;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Agent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Agent;
  }

  @override
  void update(void Function(AgentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Agent build() {
    _$Agent _$result;
    try {
      _$result = _$v ??
          new _$Agent._(
              id: id,
              agent_key: agent_key,
              user_key: user_key,
              username: username,
              password: password,
              phone: phone,
              email: email,
              first_name: first_name,
              last_name: last_name,
              current_location: current_location,
              geofence: geofence,
              status: status,
              is_verified: is_verified,
              team_key: _team_key?.build(),
              tags: _tags?.build(),
              fleet_id: fleet_id,
              transport_type: transport_type,
              transport_desc: transport_desc,
              license: license,
              color: color,
              url: url,
              min_visits: min_visits,
              capacity: capacity,
              payment: payment,
              recommended_merchants_to_join: recommended_merchants_to_join,
              recommended_promotions: recommended_promotions,
              user_id: user_id,
              own_a_vehicle: own_a_vehicle,
              own_a_space: own_a_space,
              team_id: team_id,
              rule_id: rule_id,
              date: date,
              limit: limit,
              block_status: block_status,
              message: message,
              skills: _skills?.build(),
              availability: availability,
              earnings: earnings,
              providers: providers,
              pending_proifle_steps: pending_proifle_steps);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'team_key';
        _team_key?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'skills';
        _skills?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Agent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
