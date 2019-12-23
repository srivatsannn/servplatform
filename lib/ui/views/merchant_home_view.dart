import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:servplatform/core/enums/view_state.dart';
import 'package:servplatform/core/localization/localization.dart';
import 'package:servplatform/core/view_models/merchant_home_view_model.dart';
import 'package:servplatform/ui/shared/ui_helper.dart';

class MerchantHomeView extends StatelessWidget {
  const MerchantHomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);

    return ViewModelProvider<MerchantHomeViewModel>.withoutConsumer(
      viewModel: MerchantHomeViewModel(),
      builder: (context, model, child) => PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text(local.merchantHomeViewTitle),
          ios: (_) => CupertinoNavigationBarData(
            previousPageTitle: local.merchantHomeViewTitle,
            transitionBetweenRoutes: false,
          ),
        ),
        body: Form(
          key: model.formKey,
          child: _Container(
            children: <Widget>[
              _ServiceTextField(),
              UIHelper.verticalSpaceMedium(),
              _PercentMatchTextField(),
              UIHelper.verticalSpaceMedium(),
              _AddServiceButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Container extends StatelessWidget {
  final List<Widget> children;

  const _Container({Key key, @required this.children})
      : assert(children != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}

class _ServiceTextField extends ProviderWidget<MerchantHomeViewModel> {
  @override
  Widget build(BuildContext context, MerchantHomeViewModel model) {
    final local = AppLocalizations.of(context);

    return TextFormField(
      controller: model.serviceController,
      validator: model.validateService,
      onFieldSubmitted: (_) => model.percent_match_FocusNode.requestFocus(),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: local.serviceHintText,
        contentPadding: const EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}

class _PercentMatchTextField extends ProviderWidget<MerchantHomeViewModel> {
  @override
  Widget build(BuildContext context, MerchantHomeViewModel model) {
    final local = AppLocalizations.of(context);

    return TextFormField(
      controller: model.percent_matchController,
      validator: model.validatePercentageMatch,
      focusNode: model.percent_match_FocusNode,
      obscureText: true,
      textInputAction: TextInputAction.send,
      onFieldSubmitted: (_) => model.addService,
      decoration: InputDecoration(
        hintText: local.serviceHintText,
        contentPadding: const EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}

class _AddServiceButton extends ProviderWidget<MerchantHomeViewModel> {
  @override
  Widget build(BuildContext context, MerchantHomeViewModel model) {
    final local = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return model.state == ViewState.Busy
        ? PlatformCircularProgressIndicator()
        : PlatformButton(
            child: Text(local.addServiceButtonText),
            onPressed: model.addService,
            android: (context) => MaterialRaisedButtonData(
              textTheme: ButtonTextTheme.primary,
              color: theme.primaryColor,
            ),
          );
  }
}
