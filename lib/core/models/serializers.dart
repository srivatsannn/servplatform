library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:servplatform/core/models/post/post.dart';
import 'package:servplatform/core/models/user/user.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/core/models/story/story.dart';
import 'package:servplatform/core/models/category/category.dart';
import 'package:servplatform/core/models/adhoc_request/adhoc_request.dart';
import 'package:servplatform/core/models/agent/agent.dart';
import 'package:servplatform/core/models/provider/provider.dart';
import 'package:servplatform/core/models/cart/cart.dart';
import 'package:servplatform/core/models/chat/chat.dart';
import 'package:servplatform/core/models/earning/earning.dart';
import 'package:servplatform/core/models/merchant/merchant.dart';
import 'package:servplatform/core/models/order/order.dart';
import 'package:servplatform/core/models/review/review.dart';
import 'package:servplatform/core/models/task/task.dart';
import 'package:servplatform/core/models/team/team.dart';
import 'package:built_collection/built_collection.dart';


part 'serializers.g.dart';

/// List of models that will have a serializer generated for them.
///   - Usually you only add models here that you expect to fetch from some API
@SerializersFor([
  User,
  Post,
  Service,
  Story,
  Category,
  AdhocRequest,
  Agent,
  Provider,
  Cart,
  Chat,
  Earning,
  Merchant,
  Order,
  Review,
  Task,
  Team,
])

/// Can add additional plugins that will serialize types like [DateTime]
///   - It is also possible to write your own Serializer plugins for type that
///     are not supported by default.
///   - For Example: https://github.com/google/built_value.dart/issues/543
///     implements [SerializerPlugin] and writes a serializer for Firebase
///     Datetime that converts TimeStamp or DateTime to integers.
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();
