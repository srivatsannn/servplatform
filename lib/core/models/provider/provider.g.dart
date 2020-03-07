// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Provider> _$providerSerializer = new _$ProviderSerializer();

class _$ProviderSerializer implements StructuredSerializer<Provider> {
  @override
  final Iterable<Type> types = const [Provider, _$Provider];
  @override
  final String wireName = 'Provider';

  @override
  Iterable<Object> serialize(Serializers serializers, Provider object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.provider_key != null) {
      result
        ..add('provider_key')
        ..add(serializers.serialize(object.provider_key,
            specifiedType: const FullType(String)));
    }
    if (object.provider_name != null) {
      result
        ..add('provider_name')
        ..add(serializers.serialize(object.provider_name,
            specifiedType: const FullType(String)));
    }
    if (object.discount_and_other_info != null) {
      result
        ..add('discount_and_other_info')
        ..add(serializers.serialize(object.discount_and_other_info,
            specifiedType: const FullType(String)));
    }
    if (object.area_serviced_geofence != null) {
      result
        ..add('area_serviced_geofence')
        ..add(serializers.serialize(object.area_serviced_geofence,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.company_address != null) {
      result
        ..add('company_address')
        ..add(serializers.serialize(object.company_address,
            specifiedType: const FullType(String)));
    }
    if (object.display_address != null) {
      result
        ..add('display_address')
        ..add(serializers.serialize(object.display_address,
            specifiedType: const FullType(String)));
    }
    if (object.company_longitude != null) {
      result
        ..add('company_longitude')
        ..add(serializers.serialize(object.company_longitude,
            specifiedType: const FullType(String)));
    }
    if (object.company_latitude != null) {
      result
        ..add('company_latitude')
        ..add(serializers.serialize(object.company_latitude,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.is_active != null) {
      result
        ..add('is_active')
        ..add(serializers.serialize(object.is_active,
            specifiedType: const FullType(String)));
    }
    if (object.logo_url != null) {
      result
        ..add('logo_url')
        ..add(serializers.serialize(object.logo_url,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.long_description != null) {
      result
        ..add('long_description')
        ..add(serializers.serialize(object.long_description,
            specifiedType: const FullType(String)));
    }
    if (object.key_highlights != null) {
      result
        ..add('key_highlights')
        ..add(serializers.serialize(object.key_highlights,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.introduction != null) {
      result
        ..add('introduction')
        ..add(serializers.serialize(object.introduction,
            specifiedType: const FullType(String)));
    }
    if (object.multi_image_url != null) {
      result
        ..add('multi_image_url')
        ..add(serializers.serialize(object.multi_image_url,
            specifiedType: const FullType(String)));
    }
    if (object.reviews_key != null) {
      result
        ..add('reviews_key')
        ..add(serializers.serialize(object.reviews_key,
            specifiedType: const FullType(String)));
    }
    if (object.story_key != null) {
      result
        ..add('story_key')
        ..add(serializers.serialize(object.story_key,
            specifiedType: const FullType(String)));
    }
    if (object.is_blocked != null) {
      result
        ..add('is_blocked')
        ..add(serializers.serialize(object.is_blocked,
            specifiedType: const FullType(String)));
    }
    if (object.total_earnings != null) {
      result
        ..add('total_earnings')
        ..add(serializers.serialize(object.total_earnings,
            specifiedType: const FullType(String)));
    }
    if (object.number_of_steps_left != null) {
      result
        ..add('number_of_steps_left')
        ..add(serializers.serialize(object.number_of_steps_left,
            specifiedType: const FullType(String)));
    }
    if (object.setup_level != null) {
      result
        ..add('setup_level')
        ..add(serializers.serialize(object.setup_level,
            specifiedType: const FullType(String)));
    }
    if (object.merchant_permission != null) {
      result
        ..add('merchant_permission')
        ..add(serializers.serialize(object.merchant_permission,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.view_task != null) {
      result
        ..add('view_task')
        ..add(serializers.serialize(object.view_task,
            specifiedType: const FullType(String)));
    }
    if (object.add_task != null) {
      result
        ..add('add_task')
        ..add(serializers.serialize(object.add_task,
            specifiedType: const FullType(String)));
    }
    if (object.add_team != null) {
      result
        ..add('add_team')
        ..add(serializers.serialize(object.add_team,
            specifiedType: const FullType(String)));
    }
    if (object.view_team != null) {
      result
        ..add('view_team')
        ..add(serializers.serialize(object.view_team,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.add_region != null) {
      result
        ..add('add_region')
        ..add(serializers.serialize(object.add_region,
            specifiedType: const FullType(String)));
    }
    if (object.view_region != null) {
      result
        ..add('view_region')
        ..add(serializers.serialize(object.view_region,
            specifiedType: const FullType(String)));
    }
    if (object.add_agent != null) {
      result
        ..add('add_agent')
        ..add(serializers.serialize(object.add_agent,
            specifiedType: const FullType(String)));
    }
    if (object.view_agent != null) {
      result
        ..add('view_agent')
        ..add(serializers.serialize(object.view_agent,
            specifiedType: const FullType(String)));
    }
    if (object.view_fleet_availability != null) {
      result
        ..add('view_fleet_availability')
        ..add(serializers.serialize(object.view_fleet_availability,
            specifiedType: const FullType(String)));
    }
    if (object.edit_fleet_availability != null) {
      result
        ..add('edit_fleet_availability')
        ..add(serializers.serialize(object.edit_fleet_availability,
            specifiedType: const FullType(String)));
    }
    if (object.teams != null) {
      result
        ..add('teams')
        ..add(serializers.serialize(object.teams,
            specifiedType: const FullType(String)));
    }
    if (object.commission_percentage != null) {
      result
        ..add('commission_percentage')
        ..add(serializers.serialize(object.commission_percentage,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Provider deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProviderBuilder();

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
        case 'provider_key':
          result.provider_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'provider_name':
          result.provider_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'discount_and_other_info':
          result.discount_and_other_info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'area_serviced_geofence':
          result.area_serviced_geofence.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'company_address':
          result.company_address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_address':
          result.display_address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_longitude':
          result.company_longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_latitude':
          result.company_latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logo_url':
          result.logo_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'long_description':
          result.long_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key_highlights':
          result.key_highlights.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'introduction':
          result.introduction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'multi_image_url':
          result.multi_image_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviews_key':
          result.reviews_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'story_key':
          result.story_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_blocked':
          result.is_blocked = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_earnings':
          result.total_earnings = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number_of_steps_left':
          result.number_of_steps_left = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'setup_level':
          result.setup_level = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'merchant_permission':
          result.merchant_permission.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'view_task':
          result.view_task = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'add_task':
          result.add_task = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'add_team':
          result.add_team = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'view_team':
          result.view_team.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'add_region':
          result.add_region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'view_region':
          result.view_region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'add_agent':
          result.add_agent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'view_agent':
          result.view_agent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'view_fleet_availability':
          result.view_fleet_availability = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'edit_fleet_availability':
          result.edit_fleet_availability = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teams':
          result.teams = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commission_percentage':
          result.commission_percentage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Provider extends Provider {
  @override
  final int id;
  @override
  final String provider_key;
  @override
  final String provider_name;
  @override
  final String discount_and_other_info;
  @override
  final BuiltList<String> area_serviced_geofence;
  @override
  final String company_address;
  @override
  final String display_address;
  @override
  final String company_longitude;
  @override
  final String company_latitude;
  @override
  final String phone;
  @override
  final String is_active;
  @override
  final String logo_url;
  @override
  final String description;
  @override
  final String long_description;
  @override
  final BuiltList<String> key_highlights;
  @override
  final String introduction;
  @override
  final String multi_image_url;
  @override
  final String reviews_key;
  @override
  final String story_key;
  @override
  final String is_blocked;
  @override
  final String total_earnings;
  @override
  final String number_of_steps_left;
  @override
  final String setup_level;
  @override
  final BuiltList<String> merchant_permission;
  @override
  final String view_task;
  @override
  final String add_task;
  @override
  final String add_team;
  @override
  final BuiltList<String> view_team;
  @override
  final String add_region;
  @override
  final String view_region;
  @override
  final String add_agent;
  @override
  final String view_agent;
  @override
  final String view_fleet_availability;
  @override
  final String edit_fleet_availability;
  @override
  final String teams;
  @override
  final String commission_percentage;

  factory _$Provider([void Function(ProviderBuilder) updates]) =>
      (new ProviderBuilder()..update(updates)).build();

  _$Provider._(
      {this.id,
      this.provider_key,
      this.provider_name,
      this.discount_and_other_info,
      this.area_serviced_geofence,
      this.company_address,
      this.display_address,
      this.company_longitude,
      this.company_latitude,
      this.phone,
      this.is_active,
      this.logo_url,
      this.description,
      this.long_description,
      this.key_highlights,
      this.introduction,
      this.multi_image_url,
      this.reviews_key,
      this.story_key,
      this.is_blocked,
      this.total_earnings,
      this.number_of_steps_left,
      this.setup_level,
      this.merchant_permission,
      this.view_task,
      this.add_task,
      this.add_team,
      this.view_team,
      this.add_region,
      this.view_region,
      this.add_agent,
      this.view_agent,
      this.view_fleet_availability,
      this.edit_fleet_availability,
      this.teams,
      this.commission_percentage})
      : super._();

  @override
  Provider rebuild(void Function(ProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProviderBuilder toBuilder() => new ProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Provider &&
        id == other.id &&
        provider_key == other.provider_key &&
        provider_name == other.provider_name &&
        discount_and_other_info == other.discount_and_other_info &&
        area_serviced_geofence == other.area_serviced_geofence &&
        company_address == other.company_address &&
        display_address == other.display_address &&
        company_longitude == other.company_longitude &&
        company_latitude == other.company_latitude &&
        phone == other.phone &&
        is_active == other.is_active &&
        logo_url == other.logo_url &&
        description == other.description &&
        long_description == other.long_description &&
        key_highlights == other.key_highlights &&
        introduction == other.introduction &&
        multi_image_url == other.multi_image_url &&
        reviews_key == other.reviews_key &&
        story_key == other.story_key &&
        is_blocked == other.is_blocked &&
        total_earnings == other.total_earnings &&
        number_of_steps_left == other.number_of_steps_left &&
        setup_level == other.setup_level &&
        merchant_permission == other.merchant_permission &&
        view_task == other.view_task &&
        add_task == other.add_task &&
        add_team == other.add_team &&
        view_team == other.view_team &&
        add_region == other.add_region &&
        view_region == other.view_region &&
        add_agent == other.add_agent &&
        view_agent == other.view_agent &&
        view_fleet_availability == other.view_fleet_availability &&
        edit_fleet_availability == other.edit_fleet_availability &&
        teams == other.teams &&
        commission_percentage == other.commission_percentage;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), provider_key.hashCode), provider_name.hashCode), discount_and_other_info.hashCode), area_serviced_geofence.hashCode), company_address.hashCode), display_address.hashCode), company_longitude.hashCode), company_latitude.hashCode), phone.hashCode), is_active.hashCode), logo_url.hashCode), description.hashCode), long_description.hashCode), key_highlights.hashCode), introduction.hashCode), multi_image_url.hashCode),
                                                                                reviews_key.hashCode),
                                                                            story_key.hashCode),
                                                                        is_blocked.hashCode),
                                                                    total_earnings.hashCode),
                                                                number_of_steps_left.hashCode),
                                                            setup_level.hashCode),
                                                        merchant_permission.hashCode),
                                                    view_task.hashCode),
                                                add_task.hashCode),
                                            add_team.hashCode),
                                        view_team.hashCode),
                                    add_region.hashCode),
                                view_region.hashCode),
                            add_agent.hashCode),
                        view_agent.hashCode),
                    view_fleet_availability.hashCode),
                edit_fleet_availability.hashCode),
            teams.hashCode),
        commission_percentage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Provider')
          ..add('id', id)
          ..add('provider_key', provider_key)
          ..add('provider_name', provider_name)
          ..add('discount_and_other_info', discount_and_other_info)
          ..add('area_serviced_geofence', area_serviced_geofence)
          ..add('company_address', company_address)
          ..add('display_address', display_address)
          ..add('company_longitude', company_longitude)
          ..add('company_latitude', company_latitude)
          ..add('phone', phone)
          ..add('is_active', is_active)
          ..add('logo_url', logo_url)
          ..add('description', description)
          ..add('long_description', long_description)
          ..add('key_highlights', key_highlights)
          ..add('introduction', introduction)
          ..add('multi_image_url', multi_image_url)
          ..add('reviews_key', reviews_key)
          ..add('story_key', story_key)
          ..add('is_blocked', is_blocked)
          ..add('total_earnings', total_earnings)
          ..add('number_of_steps_left', number_of_steps_left)
          ..add('setup_level', setup_level)
          ..add('merchant_permission', merchant_permission)
          ..add('view_task', view_task)
          ..add('add_task', add_task)
          ..add('add_team', add_team)
          ..add('view_team', view_team)
          ..add('add_region', add_region)
          ..add('view_region', view_region)
          ..add('add_agent', add_agent)
          ..add('view_agent', view_agent)
          ..add('view_fleet_availability', view_fleet_availability)
          ..add('edit_fleet_availability', edit_fleet_availability)
          ..add('teams', teams)
          ..add('commission_percentage', commission_percentage))
        .toString();
  }
}

class ProviderBuilder implements Builder<Provider, ProviderBuilder> {
  _$Provider _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _provider_key;
  String get provider_key => _$this._provider_key;
  set provider_key(String provider_key) => _$this._provider_key = provider_key;

  String _provider_name;
  String get provider_name => _$this._provider_name;
  set provider_name(String provider_name) =>
      _$this._provider_name = provider_name;

  String _discount_and_other_info;
  String get discount_and_other_info => _$this._discount_and_other_info;
  set discount_and_other_info(String discount_and_other_info) =>
      _$this._discount_and_other_info = discount_and_other_info;

  ListBuilder<String> _area_serviced_geofence;
  ListBuilder<String> get area_serviced_geofence =>
      _$this._area_serviced_geofence ??= new ListBuilder<String>();
  set area_serviced_geofence(ListBuilder<String> area_serviced_geofence) =>
      _$this._area_serviced_geofence = area_serviced_geofence;

  String _company_address;
  String get company_address => _$this._company_address;
  set company_address(String company_address) =>
      _$this._company_address = company_address;

  String _display_address;
  String get display_address => _$this._display_address;
  set display_address(String display_address) =>
      _$this._display_address = display_address;

  String _company_longitude;
  String get company_longitude => _$this._company_longitude;
  set company_longitude(String company_longitude) =>
      _$this._company_longitude = company_longitude;

  String _company_latitude;
  String get company_latitude => _$this._company_latitude;
  set company_latitude(String company_latitude) =>
      _$this._company_latitude = company_latitude;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _is_active;
  String get is_active => _$this._is_active;
  set is_active(String is_active) => _$this._is_active = is_active;

  String _logo_url;
  String get logo_url => _$this._logo_url;
  set logo_url(String logo_url) => _$this._logo_url = logo_url;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _long_description;
  String get long_description => _$this._long_description;
  set long_description(String long_description) =>
      _$this._long_description = long_description;

  ListBuilder<String> _key_highlights;
  ListBuilder<String> get key_highlights =>
      _$this._key_highlights ??= new ListBuilder<String>();
  set key_highlights(ListBuilder<String> key_highlights) =>
      _$this._key_highlights = key_highlights;

  String _introduction;
  String get introduction => _$this._introduction;
  set introduction(String introduction) => _$this._introduction = introduction;

  String _multi_image_url;
  String get multi_image_url => _$this._multi_image_url;
  set multi_image_url(String multi_image_url) =>
      _$this._multi_image_url = multi_image_url;

  String _reviews_key;
  String get reviews_key => _$this._reviews_key;
  set reviews_key(String reviews_key) => _$this._reviews_key = reviews_key;

  String _story_key;
  String get story_key => _$this._story_key;
  set story_key(String story_key) => _$this._story_key = story_key;

  String _is_blocked;
  String get is_blocked => _$this._is_blocked;
  set is_blocked(String is_blocked) => _$this._is_blocked = is_blocked;

  String _total_earnings;
  String get total_earnings => _$this._total_earnings;
  set total_earnings(String total_earnings) =>
      _$this._total_earnings = total_earnings;

  String _number_of_steps_left;
  String get number_of_steps_left => _$this._number_of_steps_left;
  set number_of_steps_left(String number_of_steps_left) =>
      _$this._number_of_steps_left = number_of_steps_left;

  String _setup_level;
  String get setup_level => _$this._setup_level;
  set setup_level(String setup_level) => _$this._setup_level = setup_level;

  ListBuilder<String> _merchant_permission;
  ListBuilder<String> get merchant_permission =>
      _$this._merchant_permission ??= new ListBuilder<String>();
  set merchant_permission(ListBuilder<String> merchant_permission) =>
      _$this._merchant_permission = merchant_permission;

  String _view_task;
  String get view_task => _$this._view_task;
  set view_task(String view_task) => _$this._view_task = view_task;

  String _add_task;
  String get add_task => _$this._add_task;
  set add_task(String add_task) => _$this._add_task = add_task;

  String _add_team;
  String get add_team => _$this._add_team;
  set add_team(String add_team) => _$this._add_team = add_team;

  ListBuilder<String> _view_team;
  ListBuilder<String> get view_team =>
      _$this._view_team ??= new ListBuilder<String>();
  set view_team(ListBuilder<String> view_team) => _$this._view_team = view_team;

  String _add_region;
  String get add_region => _$this._add_region;
  set add_region(String add_region) => _$this._add_region = add_region;

  String _view_region;
  String get view_region => _$this._view_region;
  set view_region(String view_region) => _$this._view_region = view_region;

  String _add_agent;
  String get add_agent => _$this._add_agent;
  set add_agent(String add_agent) => _$this._add_agent = add_agent;

  String _view_agent;
  String get view_agent => _$this._view_agent;
  set view_agent(String view_agent) => _$this._view_agent = view_agent;

  String _view_fleet_availability;
  String get view_fleet_availability => _$this._view_fleet_availability;
  set view_fleet_availability(String view_fleet_availability) =>
      _$this._view_fleet_availability = view_fleet_availability;

  String _edit_fleet_availability;
  String get edit_fleet_availability => _$this._edit_fleet_availability;
  set edit_fleet_availability(String edit_fleet_availability) =>
      _$this._edit_fleet_availability = edit_fleet_availability;

  String _teams;
  String get teams => _$this._teams;
  set teams(String teams) => _$this._teams = teams;

  String _commission_percentage;
  String get commission_percentage => _$this._commission_percentage;
  set commission_percentage(String commission_percentage) =>
      _$this._commission_percentage = commission_percentage;

  ProviderBuilder();

  ProviderBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _provider_key = _$v.provider_key;
      _provider_name = _$v.provider_name;
      _discount_and_other_info = _$v.discount_and_other_info;
      _area_serviced_geofence = _$v.area_serviced_geofence?.toBuilder();
      _company_address = _$v.company_address;
      _display_address = _$v.display_address;
      _company_longitude = _$v.company_longitude;
      _company_latitude = _$v.company_latitude;
      _phone = _$v.phone;
      _is_active = _$v.is_active;
      _logo_url = _$v.logo_url;
      _description = _$v.description;
      _long_description = _$v.long_description;
      _key_highlights = _$v.key_highlights?.toBuilder();
      _introduction = _$v.introduction;
      _multi_image_url = _$v.multi_image_url;
      _reviews_key = _$v.reviews_key;
      _story_key = _$v.story_key;
      _is_blocked = _$v.is_blocked;
      _total_earnings = _$v.total_earnings;
      _number_of_steps_left = _$v.number_of_steps_left;
      _setup_level = _$v.setup_level;
      _merchant_permission = _$v.merchant_permission?.toBuilder();
      _view_task = _$v.view_task;
      _add_task = _$v.add_task;
      _add_team = _$v.add_team;
      _view_team = _$v.view_team?.toBuilder();
      _add_region = _$v.add_region;
      _view_region = _$v.view_region;
      _add_agent = _$v.add_agent;
      _view_agent = _$v.view_agent;
      _view_fleet_availability = _$v.view_fleet_availability;
      _edit_fleet_availability = _$v.edit_fleet_availability;
      _teams = _$v.teams;
      _commission_percentage = _$v.commission_percentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Provider other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Provider;
  }

  @override
  void update(void Function(ProviderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Provider build() {
    _$Provider _$result;
    try {
      _$result = _$v ??
          new _$Provider._(
              id: id,
              provider_key: provider_key,
              provider_name: provider_name,
              discount_and_other_info: discount_and_other_info,
              area_serviced_geofence: _area_serviced_geofence?.build(),
              company_address: company_address,
              display_address: display_address,
              company_longitude: company_longitude,
              company_latitude: company_latitude,
              phone: phone,
              is_active: is_active,
              logo_url: logo_url,
              description: description,
              long_description: long_description,
              key_highlights: _key_highlights?.build(),
              introduction: introduction,
              multi_image_url: multi_image_url,
              reviews_key: reviews_key,
              story_key: story_key,
              is_blocked: is_blocked,
              total_earnings: total_earnings,
              number_of_steps_left: number_of_steps_left,
              setup_level: setup_level,
              merchant_permission: _merchant_permission?.build(),
              view_task: view_task,
              add_task: add_task,
              add_team: add_team,
              view_team: _view_team?.build(),
              add_region: add_region,
              view_region: view_region,
              add_agent: add_agent,
              view_agent: view_agent,
              view_fleet_availability: view_fleet_availability,
              edit_fleet_availability: edit_fleet_availability,
              teams: teams,
              commission_percentage: commission_percentage);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'area_serviced_geofence';
        _area_serviced_geofence?.build();

        _$failedField = 'key_highlights';
        _key_highlights?.build();

        _$failedField = 'merchant_permission';
        _merchant_permission?.build();

        _$failedField = 'view_team';
        _view_team?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Provider', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
