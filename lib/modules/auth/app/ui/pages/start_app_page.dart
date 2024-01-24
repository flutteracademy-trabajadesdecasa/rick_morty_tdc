import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/modules/auth/app/structure/start_app/start_app_cubit.dart';
import 'package:rick_morty_tdc/modules/auth/app/structure/start_app/start_app_state.dart';

class StartAppPage extends StatelessWidget {
  const StartAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartAppCubit, StartAppState>(
      bloc: locator<StartAppCubit>()..init(),
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
