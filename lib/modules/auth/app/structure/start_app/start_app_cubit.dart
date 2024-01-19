import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_tdc/modules/auth/app/structure/start_app/start_app_state.dart';

class StartAppCubit extends Cubit<StartAppState> {
  StartAppCubit() : super(const StartAppState());
}
