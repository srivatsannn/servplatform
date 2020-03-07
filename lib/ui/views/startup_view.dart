
import 'package:flutter/material.dart';
import 'package:provider_architecture/viewmodel_provider.dart';
import 'package:servplatform/core/view_models/widgets/start_view_model.dart';
import 'package:servplatform/ui/widgets/loading_animation.dart';


class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<StartUpViewModel>.withConsumer(
      viewModel: StartUpViewModel(),
      onModelReady: (model) => model.handleStartUpLogic(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: LoadingAnimation(),
        ),
      ),
    );
  }
}