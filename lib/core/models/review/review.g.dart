// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Review> _$reviewSerializer = new _$ReviewSerializer();

class _$ReviewSerializer implements StructuredSerializer<Review> {
  @override
  final Iterable<Type> types = const [Review, _$Review];
  @override
  final String wireName = 'Review';

  @override
  Iterable<Object> serialize(Serializers serializers, Review object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.reviewer_key != null) {
      result
        ..add('reviewer_key')
        ..add(serializers.serialize(object.reviewer_key,
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
    if (object.review_descrpitpn != null) {
      result
        ..add('review_descrpitpn')
        ..add(serializers.serialize(object.review_descrpitpn,
            specifiedType: const FullType(String)));
    }
    if (object.revieewee != null) {
      result
        ..add('revieewee')
        ..add(serializers.serialize(object.revieewee,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.star_rating != null) {
      result
        ..add('star_rating')
        ..add(serializers.serialize(object.star_rating,
            specifiedType: const FullType(String)));
    }
    if (object.insights != null) {
      result
        ..add('insights')
        ..add(serializers.serialize(object.insights,
            specifiedType: const FullType(String)));
    }
    if (object.multi_mg_url != null) {
      result
        ..add('multi_mg_url')
        ..add(serializers.serialize(object.multi_mg_url,
            specifiedType: const FullType(String)));
    }
    if (object.agent != null) {
      result
        ..add('agent')
        ..add(serializers.serialize(object.agent,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(String)));
    }
    if (object.review_for != null) {
      result
        ..add('review_for')
        ..add(serializers.serialize(object.review_for,
            specifiedType: const FullType(String)));
    }
    if (object.suggested_compliments_list != null) {
      result
        ..add('suggested_compliments_list')
        ..add(serializers.serialize(object.suggested_compliments_list,
            specifiedType: const FullType(String)));
    }
    if (object.negative_feedback != null) {
      result
        ..add('negative_feedback')
        ..add(serializers.serialize(object.negative_feedback,
            specifiedType: const FullType(String)));
    }
    if (object.video_url != null) {
      result
        ..add('video_url')
        ..add(serializers.serialize(object.video_url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Review deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewBuilder();

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
        case 'reviewer_key':
          result.reviewer_key = serializers.deserialize(value,
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
        case 'review_descrpitpn':
          result.review_descrpitpn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'revieewee':
          result.revieewee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'star_rating':
          result.star_rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'insights':
          result.insights = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'multi_mg_url':
          result.multi_mg_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'agent':
          result.agent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'review_for':
          result.review_for = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'suggested_compliments_list':
          result.suggested_compliments_list = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'negative_feedback':
          result.negative_feedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video_url':
          result.video_url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Review extends Review {
  @override
  final int id;
  @override
  final String reviewer_key;
  @override
  final String provider_key;
  @override
  final String service_key;
  @override
  final String review_descrpitpn;
  @override
  final String revieewee;
  @override
  final String date;
  @override
  final String star_rating;
  @override
  final String insights;
  @override
  final String multi_mg_url;
  @override
  final String agent;
  @override
  final String title;
  @override
  final String price;
  @override
  final String review_for;
  @override
  final String suggested_compliments_list;
  @override
  final String negative_feedback;
  @override
  final String video_url;

  factory _$Review([void Function(ReviewBuilder) updates]) =>
      (new ReviewBuilder()..update(updates)).build();

  _$Review._(
      {this.id,
      this.reviewer_key,
      this.provider_key,
      this.service_key,
      this.review_descrpitpn,
      this.revieewee,
      this.date,
      this.star_rating,
      this.insights,
      this.multi_mg_url,
      this.agent,
      this.title,
      this.price,
      this.review_for,
      this.suggested_compliments_list,
      this.negative_feedback,
      this.video_url})
      : super._();

  @override
  Review rebuild(void Function(ReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => new ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        id == other.id &&
        reviewer_key == other.reviewer_key &&
        provider_key == other.provider_key &&
        service_key == other.service_key &&
        review_descrpitpn == other.review_descrpitpn &&
        revieewee == other.revieewee &&
        date == other.date &&
        star_rating == other.star_rating &&
        insights == other.insights &&
        multi_mg_url == other.multi_mg_url &&
        agent == other.agent &&
        title == other.title &&
        price == other.price &&
        review_for == other.review_for &&
        suggested_compliments_list == other.suggested_compliments_list &&
        negative_feedback == other.negative_feedback &&
        video_url == other.video_url;
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
                                                                        0,
                                                                        id
                                                                            .hashCode),
                                                                    reviewer_key
                                                                        .hashCode),
                                                                provider_key
                                                                    .hashCode),
                                                            service_key
                                                                .hashCode),
                                                        review_descrpitpn
                                                            .hashCode),
                                                    revieewee.hashCode),
                                                date.hashCode),
                                            star_rating.hashCode),
                                        insights.hashCode),
                                    multi_mg_url.hashCode),
                                agent.hashCode),
                            title.hashCode),
                        price.hashCode),
                    review_for.hashCode),
                suggested_compliments_list.hashCode),
            negative_feedback.hashCode),
        video_url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Review')
          ..add('id', id)
          ..add('reviewer_key', reviewer_key)
          ..add('provider_key', provider_key)
          ..add('service_key', service_key)
          ..add('review_descrpitpn', review_descrpitpn)
          ..add('revieewee', revieewee)
          ..add('date', date)
          ..add('star_rating', star_rating)
          ..add('insights', insights)
          ..add('multi_mg_url', multi_mg_url)
          ..add('agent', agent)
          ..add('title', title)
          ..add('price', price)
          ..add('review_for', review_for)
          ..add('suggested_compliments_list', suggested_compliments_list)
          ..add('negative_feedback', negative_feedback)
          ..add('video_url', video_url))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _reviewer_key;
  String get reviewer_key => _$this._reviewer_key;
  set reviewer_key(String reviewer_key) => _$this._reviewer_key = reviewer_key;

  String _provider_key;
  String get provider_key => _$this._provider_key;
  set provider_key(String provider_key) => _$this._provider_key = provider_key;

  String _service_key;
  String get service_key => _$this._service_key;
  set service_key(String service_key) => _$this._service_key = service_key;

  String _review_descrpitpn;
  String get review_descrpitpn => _$this._review_descrpitpn;
  set review_descrpitpn(String review_descrpitpn) =>
      _$this._review_descrpitpn = review_descrpitpn;

  String _revieewee;
  String get revieewee => _$this._revieewee;
  set revieewee(String revieewee) => _$this._revieewee = revieewee;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _star_rating;
  String get star_rating => _$this._star_rating;
  set star_rating(String star_rating) => _$this._star_rating = star_rating;

  String _insights;
  String get insights => _$this._insights;
  set insights(String insights) => _$this._insights = insights;

  String _multi_mg_url;
  String get multi_mg_url => _$this._multi_mg_url;
  set multi_mg_url(String multi_mg_url) => _$this._multi_mg_url = multi_mg_url;

  String _agent;
  String get agent => _$this._agent;
  set agent(String agent) => _$this._agent = agent;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _price;
  String get price => _$this._price;
  set price(String price) => _$this._price = price;

  String _review_for;
  String get review_for => _$this._review_for;
  set review_for(String review_for) => _$this._review_for = review_for;

  String _suggested_compliments_list;
  String get suggested_compliments_list => _$this._suggested_compliments_list;
  set suggested_compliments_list(String suggested_compliments_list) =>
      _$this._suggested_compliments_list = suggested_compliments_list;

  String _negative_feedback;
  String get negative_feedback => _$this._negative_feedback;
  set negative_feedback(String negative_feedback) =>
      _$this._negative_feedback = negative_feedback;

  String _video_url;
  String get video_url => _$this._video_url;
  set video_url(String video_url) => _$this._video_url = video_url;

  ReviewBuilder();

  ReviewBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _reviewer_key = _$v.reviewer_key;
      _provider_key = _$v.provider_key;
      _service_key = _$v.service_key;
      _review_descrpitpn = _$v.review_descrpitpn;
      _revieewee = _$v.revieewee;
      _date = _$v.date;
      _star_rating = _$v.star_rating;
      _insights = _$v.insights;
      _multi_mg_url = _$v.multi_mg_url;
      _agent = _$v.agent;
      _title = _$v.title;
      _price = _$v.price;
      _review_for = _$v.review_for;
      _suggested_compliments_list = _$v.suggested_compliments_list;
      _negative_feedback = _$v.negative_feedback;
      _video_url = _$v.video_url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Review;
  }

  @override
  void update(void Function(ReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Review build() {
    final _$result = _$v ??
        new _$Review._(
            id: id,
            reviewer_key: reviewer_key,
            provider_key: provider_key,
            service_key: service_key,
            review_descrpitpn: review_descrpitpn,
            revieewee: revieewee,
            date: date,
            star_rating: star_rating,
            insights: insights,
            multi_mg_url: multi_mg_url,
            agent: agent,
            title: title,
            price: price,
            review_for: review_for,
            suggested_compliments_list: suggested_compliments_list,
            negative_feedback: negative_feedback,
            video_url: video_url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
