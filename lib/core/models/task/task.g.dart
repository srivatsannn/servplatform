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
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.mission_id != null) {
      result
        ..add('mission_id')
        ..add(serializers.serialize(object.mission_id,
            specifiedType: const FullType(String)));
    }
    if (object.service_key != null) {
      result
        ..add('service_key')
        ..add(serializers.serialize(object.service_key,
            specifiedType: const FullType(String)));
    }
    if (object.descption != null) {
      result
        ..add('descption')
        ..add(serializers.serialize(object.descption,
            specifiedType: const FullType(String)));
    }
    if (object.order_id != null) {
      result
        ..add('order_id')
        ..add(serializers.serialize(object.order_id,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.predicted_satisfaction != null) {
      result
        ..add('predicted_satisfaction')
        ..add(serializers.serialize(object.predicted_satisfaction,
            specifiedType: const FullType(String)));
    }
    if (object.wait_time != null) {
      result
        ..add('wait_time')
        ..add(serializers.serialize(object.wait_time,
            specifiedType: const FullType(String)));
    }
    if (object.earning_id != null) {
      result
        ..add('earning_id')
        ..add(serializers.serialize(object.earning_id,
            specifiedType: const FullType(String)));
    }
    if (object.has_pickup != null) {
      result
        ..add('has_pickup')
        ..add(serializers.serialize(object.has_pickup,
            specifiedType: const FullType(String)));
    }
    if (object.layout_type != null) {
      result
        ..add('layout_type')
        ..add(serializers.serialize(object.layout_type,
            specifiedType: const FullType(String)));
    }
    if (object.has_delivery != null) {
      result
        ..add('has_delivery')
        ..add(serializers.serialize(object.has_delivery,
            specifiedType: const FullType(String)));
    }
    if (object.tracking_link != null) {
      result
        ..add('tracking_link')
        ..add(serializers.serialize(object.tracking_link,
            specifiedType: const FullType(String)));
    }
    if (object.custom_field_template != null) {
      result
        ..add('custom_field_template')
        ..add(serializers.serialize(object.custom_field_template,
            specifiedType: const FullType(String)));
    }
    if (object.pickup_meta_data != null) {
      result
        ..add('pickup_meta_data')
        ..add(serializers.serialize(object.pickup_meta_data,
            specifiedType: const FullType(String)));
    }
    if (object.delivery_notes != null) {
      result
        ..add('delivery_notes')
        ..add(serializers.serialize(object.delivery_notes,
            specifiedType: const FullType(String)));
    }
    if (object.order_notes != null) {
      result
        ..add('order_notes')
        ..add(serializers.serialize(object.order_notes,
            specifiedType: const FullType(String)));
    }
    if (object.team_id != null) {
      result
        ..add('team_id')
        ..add(serializers.serialize(object.team_id,
            specifiedType: const FullType(String)));
    }
    if (object.manager_id != null) {
      result
        ..add('manager_id')
        ..add(serializers.serialize(object.manager_id,
            specifiedType: const FullType(String)));
    }
    if (object.auto_assignment != null) {
      result
        ..add('auto_assignment')
        ..add(serializers.serialize(object.auto_assignment,
            specifiedType: const FullType(String)));
    }
    if (object.fleet_id != null) {
      result
        ..add('fleet_id')
        ..add(serializers.serialize(object.fleet_id,
            specifiedType: const FullType(String)));
    }
    if (object.rules_based != null) {
      result
        ..add('rules_based')
        ..add(serializers.serialize(object.rules_based,
            specifiedType: const FullType(String)));
    }
    if (object.broadcast != null) {
      result
        ..add('broadcast')
        ..add(serializers.serialize(object.broadcast,
            specifiedType: const FullType(String)));
    }
    if (object.geofencing != null) {
      result
        ..add('geofencing')
        ..add(serializers.serialize(object.geofencing,
            specifiedType: const FullType(String)));
    }
    if (object.task_windows != null) {
      result
        ..add('task_windows')
        ..add(serializers.serialize(object.task_windows,
            specifiedType: const FullType(String)));
    }
    if (object.task_dependencies != null) {
      result
        ..add('task_dependencies')
        ..add(serializers.serialize(object.task_dependencies,
            specifiedType: const FullType(String)));
    }
    if (object.priority != null) {
      result
        ..add('priority')
        ..add(serializers.serialize(object.priority,
            specifiedType: const FullType(String)));
    }
    if (object.agents != null) {
      result
        ..add('agents')
        ..add(serializers.serialize(object.agents,
            specifiedType: const FullType(String)));
    }
    if (object.p_ref_images != null) {
      result
        ..add('p_ref_images')
        ..add(serializers.serialize(object.p_ref_images,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.customer_email != null) {
      result
        ..add('customer_email')
        ..add(serializers.serialize(object.customer_email,
            specifiedType: const FullType(String)));
    }
    if (object.timezone != null) {
      result
        ..add('timezone')
        ..add(serializers.serialize(object.timezone,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType: const FullType(String)));
    }
    if (object.customer_username != null) {
      result
        ..add('customer_username')
        ..add(serializers.serialize(object.customer_username,
            specifiedType: const FullType(String)));
    }
    if (object.customer_phone != null) {
      result
        ..add('customer_phone')
        ..add(serializers.serialize(object.customer_phone,
            specifiedType: const FullType(String)));
    }
    if (object.customer_address != null) {
      result
        ..add('customer_address')
        ..add(serializers.serialize(object.customer_address,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(String)));
    }
    if (object.job_pickup_datetime != null) {
      result
        ..add('job_pickup_datetime')
        ..add(serializers.serialize(object.job_pickup_datetime,
            specifiedType: const FullType(String)));
    }
    if (object.job_delivery_datetime != null) {
      result
        ..add('job_delivery_datetime')
        ..add(serializers.serialize(object.job_delivery_datetime,
            specifiedType: const FullType(String)));
    }
    if (object.job_id != null) {
      result
        ..add('job_id')
        ..add(serializers.serialize(object.job_id,
            specifiedType: const FullType(String)));
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
          result.p_ref_images.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'customer_email':
          result.customer_email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_username':
          result.customer_username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_phone':
          result.customer_phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer_address':
          result.customer_address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_pickup_datetime':
          result.job_pickup_datetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_delivery_datetime':
          result.job_delivery_datetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job_id':
          result.job_id = serializers.deserialize(value,
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
  final BuiltList<String> p_ref_images;
  @override
  final String customer_email;
  @override
  final String timezone;
  @override
  final String tags;
  @override
  final String customer_username;
  @override
  final String customer_phone;
  @override
  final String customer_address;
  @override
  final String longitude;
  @override
  final String latitude;
  @override
  final String job_pickup_datetime;
  @override
  final String job_delivery_datetime;
  @override
  final String job_id;

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
      this.p_ref_images,
      this.customer_email,
      this.timezone,
      this.tags,
      this.customer_username,
      this.customer_phone,
      this.customer_address,
      this.longitude,
      this.latitude,
      this.job_pickup_datetime,
      this.job_delivery_datetime,
      this.job_id})
      : super._();

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
        p_ref_images == other.p_ref_images &&
        customer_email == other.customer_email &&
        timezone == other.timezone &&
        tags == other.tags &&
        customer_username == other.customer_username &&
        customer_phone == other.customer_phone &&
        customer_address == other.customer_address &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        job_pickup_datetime == other.job_pickup_datetime &&
        job_delivery_datetime == other.job_delivery_datetime &&
        job_id == other.job_id;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), mission_id.hashCode), service_key.hashCode), descption.hashCode), order_id.hashCode), status.hashCode), predicted_satisfaction.hashCode), wait_time.hashCode), earning_id.hashCode), has_pickup.hashCode), layout_type.hashCode), has_delivery.hashCode), tracking_link.hashCode), custom_field_template.hashCode), pickup_meta_data.hashCode), delivery_notes.hashCode), order_notes.hashCode), team_id.hashCode), manager_id.hashCode), auto_assignment.hashCode), fleet_id.hashCode),
                                                                                rules_based.hashCode),
                                                                            broadcast.hashCode),
                                                                        geofencing.hashCode),
                                                                    task_windows.hashCode),
                                                                task_dependencies.hashCode),
                                                            priority.hashCode),
                                                        agents.hashCode),
                                                    p_ref_images.hashCode),
                                                customer_email.hashCode),
                                            timezone.hashCode),
                                        tags.hashCode),
                                    customer_username.hashCode),
                                customer_phone.hashCode),
                            customer_address.hashCode),
                        longitude.hashCode),
                    latitude.hashCode),
                job_pickup_datetime.hashCode),
            job_delivery_datetime.hashCode),
        job_id.hashCode));
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
          ..add('p_ref_images', p_ref_images)
          ..add('customer_email', customer_email)
          ..add('timezone', timezone)
          ..add('tags', tags)
          ..add('customer_username', customer_username)
          ..add('customer_phone', customer_phone)
          ..add('customer_address', customer_address)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('job_pickup_datetime', job_pickup_datetime)
          ..add('job_delivery_datetime', job_delivery_datetime)
          ..add('job_id', job_id))
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

  ListBuilder<String> _p_ref_images;
  ListBuilder<String> get p_ref_images =>
      _$this._p_ref_images ??= new ListBuilder<String>();
  set p_ref_images(ListBuilder<String> p_ref_images) =>
      _$this._p_ref_images = p_ref_images;

  String _customer_email;
  String get customer_email => _$this._customer_email;
  set customer_email(String customer_email) =>
      _$this._customer_email = customer_email;

  String _timezone;
  String get timezone => _$this._timezone;
  set timezone(String timezone) => _$this._timezone = timezone;

  String _tags;
  String get tags => _$this._tags;
  set tags(String tags) => _$this._tags = tags;

  String _customer_username;
  String get customer_username => _$this._customer_username;
  set customer_username(String customer_username) =>
      _$this._customer_username = customer_username;

  String _customer_phone;
  String get customer_phone => _$this._customer_phone;
  set customer_phone(String customer_phone) =>
      _$this._customer_phone = customer_phone;

  String _customer_address;
  String get customer_address => _$this._customer_address;
  set customer_address(String customer_address) =>
      _$this._customer_address = customer_address;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _job_pickup_datetime;
  String get job_pickup_datetime => _$this._job_pickup_datetime;
  set job_pickup_datetime(String job_pickup_datetime) =>
      _$this._job_pickup_datetime = job_pickup_datetime;

  String _job_delivery_datetime;
  String get job_delivery_datetime => _$this._job_delivery_datetime;
  set job_delivery_datetime(String job_delivery_datetime) =>
      _$this._job_delivery_datetime = job_delivery_datetime;

  String _job_id;
  String get job_id => _$this._job_id;
  set job_id(String job_id) => _$this._job_id = job_id;

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
      _p_ref_images = _$v.p_ref_images?.toBuilder();
      _customer_email = _$v.customer_email;
      _timezone = _$v.timezone;
      _tags = _$v.tags;
      _customer_username = _$v.customer_username;
      _customer_phone = _$v.customer_phone;
      _customer_address = _$v.customer_address;
      _longitude = _$v.longitude;
      _latitude = _$v.latitude;
      _job_pickup_datetime = _$v.job_pickup_datetime;
      _job_delivery_datetime = _$v.job_delivery_datetime;
      _job_id = _$v.job_id;
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
    _$Task _$result;
    try {
      _$result = _$v ??
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
              p_ref_images: _p_ref_images?.build(),
              customer_email: customer_email,
              timezone: timezone,
              tags: tags,
              customer_username: customer_username,
              customer_phone: customer_phone,
              customer_address: customer_address,
              longitude: longitude,
              latitude: latitude,
              job_pickup_datetime: job_pickup_datetime,
              job_delivery_datetime: job_delivery_datetime,
              job_id: job_id);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'p_ref_images';
        _p_ref_images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Task', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
