import 'package:flutter/widgets.dart';
import 'package:servplatform/core/models/alert_request.dart';
import 'package:servplatform/core/models/alert_response.dart';

abstract class DialogService {
  GlobalKey<NavigatorState> get dialogNavigationKey;

  void registerDialogListener(Function(AlertRequest) showDialogListener);

  Future<AlertResponse> showDialog({
    String title,
    String description,
    String buttonTitle,
  });

  void dialogComplete(AlertResponse response);
}
