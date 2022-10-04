import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:bloc/bloc.dart';
import 'package:travel_app/pages/detail_page.dart';

import '../model/data_model.dart';
import '../services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialStates()) {
    emit(WelcomeState());
  }
  late final places;
  final DataServices data;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  DetailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
