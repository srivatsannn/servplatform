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
    final result = <Object>[
      'agent_key',
      serializers.serialize(object.agent_key,
          specifiedType: const FullType(String)),
      'user_key',
      serializers.serialize(object.user_key,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'current_location',
      serializers.serialize(object.current_location,
          specifiedType: const FullType(String)),
      'geofence',
      serializers.serialize(object.geofence,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'is_verified',
      serializers.serialize(object.is_verified,
          specifiedType: const FullType(String)),
      'team_key',
      serializers.serialize(object.team_key,
          specifiedType: const FullType(String)),
      'tags',
      serializers.serialize(object.tags, specifiedType: const FullType(String)),
      'fleet_id',
      serializers.serialize(object.fleet_id,
          specifiedType: const FullType(String)),
      'transport_type',
      serializers.serialize(object.transport_type,
          specifiedType: const FullType(String)),
      'transport_desc',
      serializers.serialize(object.transport_desc,
          specifiedType: const FullType(String)),
      'license',
      serializers.serialize(object.license,
          specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'min_visits',
      serializers.serialize(object.min_visits,
          specifiedType: const FullType(String)),
      'capacity',
      serializers.serialize(object.capacity,
          specifiedType: const FullType(String)),
      'payment',
      serializers.serialize(object.payment,
          specifiedType: const FullType(String)),
      'recommended_merchants_to_join',
      serializers.serialize(object.recommended_merchants_to_join,
          specifiedType: const FullType(String)),
      'recommended_promotions',
      serializers.serialize(object.recommended_promotions,
          specifiedType: const FullType(String)),
      'user_id',
      serializers.serialize(object.user_id,
          specifiedType: const FullType(String)),
      'own_a_vehicle',
      serializers.serialize(object.own_a_vehicle,
          specifiedType: const FullType(String)),
      'own_a_space',
      serializers.serialize(object.own_a_space,
          specifiedType: const FullType(String)),
      'team_id',
      serializers.serialize(object.team_id,
          specifiedType: const FullType(String)),
      'rule_id',
      serializers.serialize(object.rule_id,
          specifiedType: const FullType(String)),
      'block_status',
      serializers.serialize(object.block_status,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'skills',
      serializers.serialize(object.skills,
          specifiedType: const FullType(String)),
      'availability',
      serializers.serialize(object.availability,
          specifiedType: const FullType(String)),
      'earnings',
      serializers.serialize(object.earnings,
          specifiedType: const FullType(String)),
      'providers',
      serializers.serialize(object.providers,
          specifiedType: const FullType(String)),
      'pending_proifle_steps',
      serializers.serialize(object.pending_proifle_steps,
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
        case 'name':
          result.name = serializers.deserialize(value,
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
          result.team_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'block_status':
          result.block_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skills':
          result.skills = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
  final String name;
  @override
  final String current_location;
  @override
  final String geofence;
  @override
  final String status;
  @override
  final String is_verified;
  @override
  final String team_key;
  @override
  final String tags;
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
  final String block_status;
  @override
  final String message;
  @override
  final String skills;
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
      this.name,
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
      this.block_status,
      this.message,
      this.skills,
      this.availability,
      this.earnings,
      this.providers,
      this.pending_proifle_steps})
      : super._() {
    if (agent_key == null) {
      throw new BuiltValueNullFieldError('Agent', 'agent_key');
    }
    if (user_key == null) {
      throw new BuiltValueNullFieldError('Agent', 'user_key');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Agent', 'name');
    }
    if (current_location == null) {
      throw new BuiltValueNullFieldError('Agent', 'current_location');
    }
    if (geofence == null) {
      throw new BuiltValueNullFieldError('Agent', 'geofence');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Agent', 'status');
    }
    if (is_verified == null) {
      throw new BuiltValueNullFieldError('Agent', 'is_verified');
    }
    if (team_key == null) {
      throw new BuiltValueNullFieldError('Agent', 'team_key');
    }
    if (tags == null) {
      throw new BuiltValueNullFieldError('Agent', 'tags');
    }
    if (fleet_id == null) {
      throw new BuiltValueNullFieldError('Agent', 'fleet_id');
    }
    if (transport_type == null) {
      throw new BuiltValueNullFieldError('Agent', 'transport_type');
    }
    if (transport_desc == null) {
      throw new BuiltValueNullFieldError('Agent', 'transport_desc');
    }
    if (license == null) {
      throw new BuiltValueNullFieldError('Agent', 'license');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('Agent', 'color');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Agent', 'url');
    }
    if (min_visits == null) {
      throw new BuiltValueNullFieldError('Agent', 'min_visits');
    }
    if (capacity == null) {
      throw new BuiltValueNullFieldError('Agent', 'capacity');
    }
    if (payment == null) {
      throw new BuiltValueNullFieldError('Agent', 'payment');
    }
    if (recommended_merchants_to_join == null) {
      throw new BuiltValueNullFieldError(
          'Agent', 'recommended_merchants_to_join');
    }
    if (recommended_promotions == null) {
      throw new BuiltValueNullFieldError('Agent', 'recommended_promotions');
    }
    if (user_id == null) {
      throw new BuiltValueNullFieldError('Agent', 'user_id');
    }
    if (own_a_vehicle == null) {
      throw new BuiltValueNullFieldError('Agent', 'own_a_vehicle');
    }
    if (own_a_space == null) {
      throw new BuiltValueNullFieldError('Agent', 'own_a_space');
    }
    if (team_id == null) {
      throw new BuiltValueNullFieldError('Agent', 'team_id');
    }
    if (rule_id == null) {
      throw new BuiltValueNullFieldError('Agent', 'rule_id');
    }
    if (block_status == null) {
      throw new BuiltValueNullFieldError('Agent', 'block_status');
    }
    if (message == null) {
      throw new BuiltValueNullFieldError('Agent', 'message');
    }
    if (skills == null) {
      throw new BuiltValueNullFieldError('Agent', 'skills');
    }
    if (availability == null) {
      throw new BuiltValueNullFieldError('Agent', 'availability');
    }
    if (earnings == null) {
      throw new BuiltValueNullFieldError('Agent', 'earnings');
    }
    if (providers == null) {
      throw new BuiltValueNullFieldError('Agent', 'providers');
    }
    if (pending_proifle_steps == null) {
      throw new BuiltValueNullFieldError('Agent', 'pending_proifle_steps');
    }
  }

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
        name == other.name &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), agent_key.hashCode), user_key.hashCode), name.hashCode), current_location.hashCode), geofence.hashCode), status.hashCode), is_verified.hashCode), team_key.hashCode), tags.hashCode), fleet_id.hashCode), transport_type.hashCode), transport_desc.hashCode), license.hashCode),
                                                                                color.hashCode),
                                                                            url.hashCode),
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
          ..add('name', name)
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

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

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

  String _team_key;
  String get team_key => _$this._team_key;
  set team_key(String team_key) => _$this._team_key = team_key;

  String _tags;
  String get tags => _$this._tags;
  set tags(String tags) => _$this._tags = tags;

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

  String _block_status;
  String get block_status => _$this._block_status;
  set block_status(String block_status) => _$this._block_status = block_status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _skills;
  String get skills => _$this._skills;
  set skills(String skills) => _$this._skills = skills;

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
      _name = _$v.name;
      _current_location = _$v.current_location;
      _geofence = _$v.geofence;
      _status = _$v.status;
      _is_verified = _$v.is_verified;
      _team_key = _$v.team_key;
      _tags = _$v.tags;
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
      _block_status = _$v.block_status;
      _message = _$v.message;
      _skills = _$v.skills;
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
    final _$result = _$v ??
        new _$Agent._(
            id: id,
            agent_key: agent_key,
            user_key: user_key,
            name: name,
            current_location: current_location,
            geofence: geofence,
            status: status,
            is_verified: is_verified,
            team_key: team_key,
            tags: tags,
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
            block_status: block_status,
            message: message,
            skills: skills,
            availability: availability,
            earnings: earnings,
            providers: providers,
            pending_proifle_steps: pending_proifle_steps);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
