// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cart> _$cartSerializer = new _$CartSerializer();

class _$CartSerializer implements StructuredSerializer<Cart> {
  @override
  final Iterable<Type> types = const [Cart, _$Cart];
  @override
  final String wireName = 'Cart';

  @override
  Iterable<Object> serialize(Serializers serializers, Cart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.cart_key != null) {
      result
        ..add('cart_key')
        ..add(serializers.serialize(object.cart_key,
            specifiedType: const FullType(String)));
    }
    if (object.provider_key != null) {
      result
        ..add('provider_key')
        ..add(serializers.serialize(object.provider_key,
            specifiedType: const FullType(String)));
    }
    if (object.service_key != null) {
      result
        ..add('service_key')
        ..add(serializers.serialize(object.service_key,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.eta != null) {
      result
        ..add('eta')
        ..add(serializers.serialize(object.eta,
            specifiedType: const FullType(String)));
    }
    if (object.discount_options != null) {
      result
        ..add('discount_options')
        ..add(serializers.serialize(object.discount_options,
            specifiedType: const FullType(String)));
    }
    if (object.delivery_note != null) {
      result
        ..add('delivery_note')
        ..add(serializers.serialize(object.delivery_note,
            specifiedType: const FullType(String)));
    }
    if (object.order_key != null) {
      result
        ..add('order_key')
        ..add(serializers.serialize(object.order_key,
            specifiedType: const FullType(String)));
    }
    if (object.bill_summary_collection != null) {
      result
        ..add('bill_summary_collection')
        ..add(serializers.serialize(object.bill_summary_collection,
            specifiedType: const FullType(String)));
    }
    if (object.payment_methods != null) {
      result
        ..add('payment_methods')
        ..add(serializers.serialize(object.payment_methods,
            specifiedType: const FullType(String)));
    }
    if (object.promo_codes != null) {
      result
        ..add('promo_codes')
        ..add(serializers.serialize(object.promo_codes,
            specifiedType: const FullType(String)));
    }
    if (object.tip != null) {
      result
        ..add('tip')
        ..add(serializers.serialize(object.tip,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Cart deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartBuilder();

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
        case 'cart_key':
          result.cart_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'provider_key':
          result.provider_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'service_key':
          result.service_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'eta':
          result.eta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'discount_options':
          result.discount_options = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivery_note':
          result.delivery_note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_key':
          result.order_key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bill_summary_collection':
          result.bill_summary_collection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payment_methods':
          result.payment_methods = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'promo_codes':
          result.promo_codes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tip':
          result.tip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Cart extends Cart {
  @override
  final int id;
  @override
  final String cart_key;
  @override
  final String provider_key;
  @override
  final String service_key;
  @override
  final String url;
  @override
  final String location;
  @override
  final String eta;
  @override
  final String discount_options;
  @override
  final String delivery_note;
  @override
  final String order_key;
  @override
  final String bill_summary_collection;
  @override
  final String payment_methods;
  @override
  final String promo_codes;
  @override
  final String tip;

  factory _$Cart([void Function(CartBuilder) updates]) =>
      (new CartBuilder()..update(updates)).build();

  _$Cart._(
      {this.id,
      this.cart_key,
      this.provider_key,
      this.service_key,
      this.url,
      this.location,
      this.eta,
      this.discount_options,
      this.delivery_note,
      this.order_key,
      this.bill_summary_collection,
      this.payment_methods,
      this.promo_codes,
      this.tip})
      : super._();

  @override
  Cart rebuild(void Function(CartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartBuilder toBuilder() => new CartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cart &&
        id == other.id &&
        cart_key == other.cart_key &&
        provider_key == other.provider_key &&
        service_key == other.service_key &&
        url == other.url &&
        location == other.location &&
        eta == other.eta &&
        discount_options == other.discount_options &&
        delivery_note == other.delivery_note &&
        order_key == other.order_key &&
        bill_summary_collection == other.bill_summary_collection &&
        payment_methods == other.payment_methods &&
        promo_codes == other.promo_codes &&
        tip == other.tip;
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
                                                    $jc($jc(0, id.hashCode),
                                                        cart_key.hashCode),
                                                    provider_key.hashCode),
                                                service_key.hashCode),
                                            url.hashCode),
                                        location.hashCode),
                                    eta.hashCode),
                                discount_options.hashCode),
                            delivery_note.hashCode),
                        order_key.hashCode),
                    bill_summary_collection.hashCode),
                payment_methods.hashCode),
            promo_codes.hashCode),
        tip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Cart')
          ..add('id', id)
          ..add('cart_key', cart_key)
          ..add('provider_key', provider_key)
          ..add('service_key', service_key)
          ..add('url', url)
          ..add('location', location)
          ..add('eta', eta)
          ..add('discount_options', discount_options)
          ..add('delivery_note', delivery_note)
          ..add('order_key', order_key)
          ..add('bill_summary_collection', bill_summary_collection)
          ..add('payment_methods', payment_methods)
          ..add('promo_codes', promo_codes)
          ..add('tip', tip))
        .toString();
  }
}

class CartBuilder implements Builder<Cart, CartBuilder> {
  _$Cart _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _cart_key;
  String get cart_key => _$this._cart_key;
  set cart_key(String cart_key) => _$this._cart_key = cart_key;

  String _provider_key;
  String get provider_key => _$this._provider_key;
  set provider_key(String provider_key) => _$this._provider_key = provider_key;

  String _service_key;
  String get service_key => _$this._service_key;
  set service_key(String service_key) => _$this._service_key = service_key;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _eta;
  String get eta => _$this._eta;
  set eta(String eta) => _$this._eta = eta;

  String _discount_options;
  String get discount_options => _$this._discount_options;
  set discount_options(String discount_options) =>
      _$this._discount_options = discount_options;

  String _delivery_note;
  String get delivery_note => _$this._delivery_note;
  set delivery_note(String delivery_note) =>
      _$this._delivery_note = delivery_note;

  String _order_key;
  String get order_key => _$this._order_key;
  set order_key(String order_key) => _$this._order_key = order_key;

  String _bill_summary_collection;
  String get bill_summary_collection => _$this._bill_summary_collection;
  set bill_summary_collection(String bill_summary_collection) =>
      _$this._bill_summary_collection = bill_summary_collection;

  String _payment_methods;
  String get payment_methods => _$this._payment_methods;
  set payment_methods(String payment_methods) =>
      _$this._payment_methods = payment_methods;

  String _promo_codes;
  String get promo_codes => _$this._promo_codes;
  set promo_codes(String promo_codes) => _$this._promo_codes = promo_codes;

  String _tip;
  String get tip => _$this._tip;
  set tip(String tip) => _$this._tip = tip;

  CartBuilder();

  CartBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _cart_key = _$v.cart_key;
      _provider_key = _$v.provider_key;
      _service_key = _$v.service_key;
      _url = _$v.url;
      _location = _$v.location;
      _eta = _$v.eta;
      _discount_options = _$v.discount_options;
      _delivery_note = _$v.delivery_note;
      _order_key = _$v.order_key;
      _bill_summary_collection = _$v.bill_summary_collection;
      _payment_methods = _$v.payment_methods;
      _promo_codes = _$v.promo_codes;
      _tip = _$v.tip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cart other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Cart;
  }

  @override
  void update(void Function(CartBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Cart build() {
    final _$result = _$v ??
        new _$Cart._(
            id: id,
            cart_key: cart_key,
            provider_key: provider_key,
            service_key: service_key,
            url: url,
            location: location,
            eta: eta,
            discount_options: discount_options,
            delivery_note: delivery_note,
            order_key: order_key,
            bill_summary_collection: bill_summary_collection,
            payment_methods: payment_methods,
            promo_codes: promo_codes,
            tip: tip);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
