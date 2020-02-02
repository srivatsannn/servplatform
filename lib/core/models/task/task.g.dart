// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Task> _$taskSerializer = new _$TaskSerializer();

class _$TaskSerializer implements StructuredSerializer<Task> {
  @override
  final Iterable<Type> types = const [Task, _$Task];
  @override
  final String wireName = 'Task';

  @override
  Iterable<Object> serialize(Serializers serializers, Task object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mission_id',
      serializers.serialize(object.mission_id,
          specifiedType: const FullType(String)),
      'service_key',
      serializers.serialize(object.service_key,
          specifiedType: const FullType(String)),
      'descption',
      serializers.serialize(object.descption,
          specifiedType: const FullType(String)),
      'order_id',
      serializers.serialize(object.order_id,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'predicted_satisfaction',
      serializers.serialize(object.predicted_satisfaction,
          specifiedType: const FullType(String)),
      'wait_time',
      serializers.serialize(object.wait_time,
          specifiedType: const FullType(String)),
      'earning_id',
      serializers.serialize(object.earning_id,
          specifiedType: const FullType(String)),
      'has_pickup',
      serializers.serialize(object.has_pickup,
          specifiedType: const FullType(String)),
      'layout_type',
      serializers.serialize(object.layout_type,
          specifiedType: const FullType(String)),
      'has_delivery',
      serializers.serialize(object.has_delivery,
          specifiedType: const FullType(String)),
      'tracking_link',
      serializers.serialize(object.tracking_link,
          specifiedType: const FullType(String)),
      'custom_field_template',
      serializers.serialize(object.custom_field_template,
          specifiedType: const FullType(String)),
      'pickup_meta_data',
      serializers.serialize(object.pickup_meta_data,
          specifiedType: const FullType(String)),
      'delivery_notes',
      serializers.serialize(object.delivery_notes,
          specifiedType: const FullType(String)),
      'order_notes',
      serializers.serialize(object.order_notes,
          specifiedType: const FullType(String)),
      'team_id',
      serializers.serialize(object.team_id,
          specifiedType: const FullType(String)),
      'manager_id',
      serializers.serialize(object.manager_id,
          specifiedType: const FullType(String)),
      'auto_assignment',
      serializers.serialize(object.auto_assignment,
          specifiedType: const FullType(String)),
      'fleet_id',
      serializers.serialize(object.fleet_id,
          specifiedType: const FullType(String)),
      'rules_based',
      serializers.serialize(object.rules_based,
          specifiedType: const FullType(String)),
      'broadcast',
      serializers.serialize(object.broadcast,
          specifiedType: const FullType(String)),
      'geofencing',
      serializers.serialize(object.geofencing,
          specifiedType: const FullType(String)),
      'task_windows',
      serializers.serialize(object.task_windows,
          specifiedType: const FullType(String)),
      'task_dependencies',
      serializers.serialize(object.task_dependencies,
          specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(String)),
      'agents',
      serializers.serialize(object.agents,
          specifiedType: const FullType(String)),
      'p_ref_images',
      serializers.serialize(object.p_ref_images,
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
  Task deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskBuilder();

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
        case 'mission_id':
          result.mission_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'service_key':
          result.service_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descption':
          result.descption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_id':
          result.order_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'predicted_satisfaction':
          result.predicted_satisfaction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wait_time':
          result.wait_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'earning_id':
          result.earning_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_pickup':
          result.has_pickup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'layout_type':
          result.layout_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_delivery':
          result.has_delivery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tracking_link':
          result.tracking_link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'custom_field_template':
          result.custom_field_template = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pickup_meta_data':
          result.pickup_meta_data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivery_notes':
          result.delivery_notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_notes':
          result.order_notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'team_id':
          result.team_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manager_id':
          result.manager_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'auto_assignment':
          result.auto_assignment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fleet_id':
          result.fleet_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rules_based':
          result.rules_based = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'broadcast':
          result.broadcast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'geofencing':
          result.geofencing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'task_windows':
          result.task_windows = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'task_dependencies':
          result.task_dependencies = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'agents':
          result.agents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'p_ref_images':
          result.p_ref_images = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Task extends Task {
  @override
  final int id;
  @override
  final String mission_id;
  @override
  final String service_key;
  @override
  final String descption;
  @override
  final String order_id;
  @override
  final String status;
  @override
  final String predicted_satisfaction;
  @override
  final String wait_time;
  @override
  final String earning_id;
  @override
  final String has_pickup;
  @override
  final String layout_type;
  @override
  final String has_delivery;
  @override
  final String tracking_link;
  @override
  final String custom_field_template;
  @override
  final String pickup_meta_data;
  @override
  final String delivery_notes;
  @override
  final String order_notes;
  @override
  final String team_id;
  @override
  final String manager_id;
  @override
  final String auto_assignment;
  @override
  final String fleet_id;
  @override
  final String rules_based;
  @override
  final String broadcast;
  @override
  final String geofencing;
  @override
  final String task_windows;
  @override
  final String task_dependencies;
  @override
  final String priority;
  @override
  final String agents;
  @override
  final String p_ref_images;

  factory _$Task([void Function(TaskBuilder) updates]) =>
      (new TaskBuilder()..update(updates)).build();

  _$Task._(
      {this.id,
      this.mission_id,
      this.service_key,
      this.descption,
      this.order_id,
      this.status,
      this.predicted_satisfaction,
      this.wait_time,
      this.earning_id,
      this.has_pickup,
      this.layout_type,
      this.has_delivery,
      this.tracking_link,
      this.custom_field_template,
      this.pickup_meta_data,
      this.delivery_notes,
      this.order_notes,
      this.team_id,
      this.manager_id,
      this.auto_assignment,
      this.fleet_id,
      this.rules_based,
      this.broadcast,
      this.geofencing,
      this.task_windows,
      this.task_dependencies,
      this.priority,
      this.agents,
      this.p_ref_images})
      : super._() {
    if (mission_id == null) {
      throw new BuiltValueNullFieldError('Task', 'mission_id');
    }
    if (service_key == null) {
      throw new BuiltValueNullFieldError('Task', 'service_key');
    }
    if (descption == null) {
      throw new BuiltValueNullFieldError('Task', 'descption');
    }
    if (order_id == null) {
      throw new BuiltValueNullFieldError('Task', 'order_id');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Task', 'status');
    }
    if (predicted_satisfaction == null) {
      throw new BuiltValueNullFieldError('Task', 'predicted_satisfaction');
    }
    if (wait_time == null) {
      throw new BuiltValueNullFieldError('Task', 'wait_time');
    }
    if (earning_id == null) {
      throw new BuiltValueNullFieldError('Task', 'earning_id');
    }
    if (has_pickup == null) {
      throw new BuiltValueNullFieldError('Task', 'has_pickup');
    }
    if (layout_type == null) {
      throw new BuiltValueNullFieldError('Task', 'layout_type');
    }
    if (has_delivery == null) {
      throw new BuiltValueNullFieldError('Task', 'has_delivery');
    }
    if (tracking_link == null) {
      throw new BuiltValueNullFieldError('Task', 'tracking_link');
    }
    if (custom_field_template == null) {
      throw new BuiltValueNullFieldError('Task', 'custom_field_template');
    }
    if (pickup_meta_data == null) {
      throw new BuiltValueNullFieldError('Task', 'pickup_meta_data');
    }
    if (delivery_notes == null) {
      throw new BuiltValueNullFieldError('Task', 'delivery_notes');
    }
    if (order_notes == null) {
      throw new BuiltValueNullFieldError('Task', 'order_notes');
    }
    if (team_id == null) {
      throw new BuiltValueNullFieldError('Task', 'team_id');
    }
    if (manager_id == null) {
      throw new BuiltValueNullFieldError('Task', 'manager_id');
    }
    if (auto_assignment == null) {
      throw new BuiltValueNullFieldError('Task', 'auto_assignment');
    }
    if (fleet_id == null) {
      throw new BuiltValueNullFieldError('Task', 'fleet_id');
    }
    if (rules_based == null) {
      throw new BuiltValueNullFieldError('Task', 'rules_based');
    }
    if (broadcast == null) {
      throw new BuiltValueNullFieldError('Task', 'broadcast');
    }
    if (geofencing == null) {
      throw new BuiltValueNullFieldError('Task', 'geofencing');
    }
    if (task_windows == null) {
      throw new BuiltValueNullFieldError('Task', 'task_windows');
    }
    if (task_dependencies == null) {
      throw new BuiltValueNullFieldError('Task', 'task_dependencies');
    }
    if (priority == null) {
      throw new BuiltValueNullFieldError('Task', 'priority');
    }
    if (agents == null) {
      throw new BuiltValueNullFieldError('Task', 'agents');
    }
    if (p_ref_images == null) {
      throw new BuiltValueNullFieldError('Task', 'p_ref_images');
    }
  }

  @override
  Task rebuild(void Function(TaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskBuilder toBuilder() => new TaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Task &&
        id == other.id &&
        mission_id == other.mission_id &&
        service_key == other.service_key &&
        descption == other.descption &&
        order_id == other.order_id &&
        status == other.status &&
        predicted_satisfaction == other.predicted_satisfaction &&
        wait_time == other.wait_time &&
        earning_id == other.earning_id &&
        has_pickup == other.has_pickup &&
        layout_type == other.layout_type &&
        has_delivery == other.has_delivery &&
        tracking_link == other.tracking_link &&
        custom_field_template == other.custom_field_template &&
        pickup_meta_data == other.pickup_meta_data &&
        delivery_notes == other.delivery_notes &&
        order_notes == other.order_notes &&
        team_id == other.team_id &&
        manager_id == other.manager_id &&
        auto_assignment == other.auto_assignment &&
        fleet_id == other.fleet_id &&
        rules_based == other.rules_based &&
        broadcast == other.broadcast &&
        geofencing == other.geofencing &&
        task_windows == other.task_windows &&
        task_dependencies == other.task_dependencies &&
        priority == other.priority &&
        agents == other.agents &&
        p_ref_images == other.p_ref_images;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), mission_id.hashCode), service_key.hashCode), descption.hashCode), order_id.hashCode), status.hashCode), predicted_satisfaction.hashCode), wait_time.hashCode), earning_id.hashCode), has_pickup.hashCode),
                                                                                layout_type.hashCode),
                                                                            has_delivery.hashCode),
                                                                        tracking_link.hashCode),
                                                                    custom_field_template.hashCode),
                                                                pickup_meta_data.hashCode),
                                                            delivery_notes.hashCode),
                                                        order_notes.hashCode),
                                                    team_id.hashCode),
                                                manager_id.hashCode),
                                            auto_assignment.hashCode),
                                        fleet_id.hashCode),
                                    rules_based.hashCode),
                                broadcast.hashCode),
                            geofencing.hashCode),
                        task_windows.hashCode),
                    task_dependencies.hashCode),
                priority.hashCode),
            agents.hashCode),
        p_ref_images.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Task')
          ..add('id', id)
          ..add('mission_id', mission_id)
          ..add('service_key', service_key)
          ..add('descption', descption)
          ..add('order_id', order_id)
          ..add('status', status)
          ..add('predicted_satisfaction', predicted_satisfaction)
          ..add('wait_time', wait_time)
          ..add('earning_id', earning_id)
          ..add('has_pickup', has_pickup)
          ..add('layout_type', layout_type)
          ..add('has_delivery', has_delivery)
          ..add('tracking_link', tracking_link)
          ..add('custom_field_template', custom_field_template)
          ..add('pickup_meta_data', pickup_meta_data)
          ..add('delivery_notes', delivery_notes)
          ..add('order_notes', order_notes)
          ..add('team_id', team_id)
          ..add('manager_id', manager_id)
          ..add('auto_assignment', auto_assignment)
          ..add('fleet_id', fleet_id)
          ..add('rules_based', rules_based)
          ..add('broadcast', broadcast)
          ..add('geofencing', geofencing)
          ..add('task_windows', task_windows)
          ..add('task_dependencies', task_dependencies)
          ..add('priority', priority)
          ..add('agents', agents)
          ..add('p_ref_images', p_ref_images))
        .toString();
  }
}

class TaskBuilder implements Builder<Task, TaskBuilder> {
  _$Task _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _mission_id;
  String get mission_id => _$this._mission_id;
  set mission_id(String mission_id) => _$this._mission_id = mission_id;

  String _service_key;
  String get service_key => _$this._service_key;
  set service_key(String service_key) => _$this._service_key = service_key;

  String _descption;
  String get descption => _$this._descption;
  set descption(String descption) => _$this._descption = descption;

  String _order_id;
  String get order_id => _$this._order_id;
  set order_id(String order_id) => _$this._order_id = order_id;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _predicted_satisfaction;
  String get predicted_satisfaction => _$this._predicted_satisfaction;
  set predicted_satisfaction(String predicted_satisfaction) =>
      _$this._predicted_satisfaction = predicted_satisfaction;

  String _wait_time;
  String get wait_time => _$this._wait_time;
  set wait_time(String wait_time) => _$this._wait_time = wait_time;

  String _earning_id;
  String get earning_id => _$this._earning_id;
  set earning_id(String earning_id) => _$this._earning_id = earning_id;

  String _has_pickup;
  String get has_pickup => _$this._has_pickup;
  set has_pickup(String has_pickup) => _$this._has_pickup = has_pickup;

  String _layout_type;
  String get layout_type => _$this._layout_type;
  set layout_type(String layout_type) => _$this._layout_type = layout_type;

  String _has_delivery;
  String get has_delivery => _$this._has_delivery;
  set has_delivery(String has_delivery) => _$this._has_delivery = has_delivery;

  String _tracking_link;
  String get tracking_link => _$this._tracking_link;
  set tracking_link(String tracking_link) =>
      _$this._tracking_link = tracking_link;

  String _custom_field_template;
  String get custom_field_template => _$this._custom_field_template;
  set custom_field_template(String custom_field_template) =>
      _$this._custom_field_template = custom_field_template;

  String _pickup_meta_data;
  String get pickup_meta_data => _$this._pickup_meta_data;
  set pickup_meta_data(String pickup_meta_data) =>
      _$this._pickup_meta_data = pickup_meta_data;

  String _delivery_notes;
  String get delivery_notes => _$this._delivery_notes;
  set delivery_notes(String delivery_notes) =>
      _$this._delivery_notes = delivery_notes;

  String _order_notes;
  String get order_notes => _$this._order_notes;
  set order_notes(String order_notes) => _$this._order_notes = order_notes;

  String _team_id;
  String get team_id => _$this._team_id;
  set team_id(String team_id) => _$this._team_id = team_id;

  String _manager_id;
  String get manager_id => _$this._manager_id;
  set manager_id(String manager_id) => _$this._manager_id = manager_id;

  String _auto_assignment;
  String get auto_assignment => _$this._auto_assignment;
  set auto_assignment(String auto_assignment) =>
      _$this._auto_assignment = auto_assignment;

  String _fleet_id;
  String get fleet_id => _$this._fleet_id;
  set fleet_id(String fleet_id) => _$this._fleet_id = fleet_id;

  String _rules_based;
  String get rules_based => _$this._rules_based;
  set rules_based(String rules_based) => _$this._rules_based = rules_based;

  String _broadcast;
  String get broadcast => _$this._broadcast;
  set broadcast(String broadcast) => _$this._broadcast = broadcast;

  String _geofencing;
  String get geofencing => _$this._geofencing;
  set geofencing(String geofencing) => _$this._geofencing = geofencing;

  String _task_windows;
  String get task_windows => _$this._task_windows;
  set task_windows(String task_windows) => _$this._task_windows = task_windows;

  String _task_dependencies;
  String get task_dependencies => _$this._task_dependencies;
  set task_dependencies(String task_dependencies) =>
      _$this._task_dependencies = task_dependencies;

  String _priority;
  String get priority => _$this._priority;
  set priority(String priority) => _$this._priority = priority;

  String _agents;
  String get agents => _$this._agents;
  set agents(String agents) => _$this._agents = agents;

  String _p_ref_images;
  String get p_ref_images => _$this._p_ref_images;
  set p_ref_images(String p_ref_images) => _$this._p_ref_images = p_ref_images;

  TaskBuilder();

  TaskBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _mission_id = _$v.mission_id;
      _service_key = _$v.service_key;
      _descption = _$v.descption;
      _order_id = _$v.order_id;
      _status = _$v.status;
      _predicted_satisfaction = _$v.predicted_satisfaction;
      _wait_time = _$v.wait_time;
      _earning_id = _$v.earning_id;
      _has_pickup = _$v.has_pickup;
      _layout_type = _$v.layout_type;
      _has_delivery = _$v.has_delivery;
      _tracking_link = _$v.tracking_link;
      _custom_field_template = _$v.custom_field_template;
      _pickup_meta_data = _$v.pickup_meta_data;
      _delivery_notes = _$v.delivery_notes;
      _order_notes = _$v.order_notes;
      _team_id = _$v.team_id;
      _manager_id = _$v.manager_id;
      _auto_assignment = _$v.auto_assignment;
      _fleet_id = _$v.fleet_id;
      _rules_based = _$v.rules_based;
      _broadcast = _$v.broadcast;
      _geofencing = _$v.geofencing;
      _task_windows = _$v.task_windows;
      _task_dependencies = _$v.task_dependencies;
      _priority = _$v.priority;
      _agents = _$v.agents;
      _p_ref_images = _$v.p_ref_images;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Task other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Task;
  }

  @override
  void update(void Function(TaskBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Task build() {
    final _$result = _$v ??
        new _$Task._(
            id: id,
            mission_id: mission_id,
            service_key: service_key,
            descption: descption,
            order_id: order_id,
            status: status,
            predicted_satisfaction: predicted_satisfaction,
            wait_time: wait_time,
            earning_id: earning_id,
            has_pickup: has_pickup,
            layout_type: layout_type,
            has_delivery: has_delivery,
            tracking_link: tracking_link,
            custom_field_template: custom_field_template,
            pickup_meta_data: pickup_meta_data,
            delivery_notes: delivery_notes,
            order_notes: order_notes,
            team_id: team_id,
            manager_id: manager_id,
            auto_assignment: auto_assignment,
            fleet_id: fleet_id,
            rules_based: rules_based,
            broadcast: broadcast,
            geofencing: geofencing,
            task_windows: task_windows,
            task_dependencies: task_dependencies,
            priority: priority,
            agents: agents,
            p_ref_images: p_ref_images);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
