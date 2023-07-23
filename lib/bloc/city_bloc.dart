import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  CityBloc() : super(CityState()) {
    on<LoadCityEvent>(_onLoadCity);
    on<ChangeCityEvent>(_onCityEvent);
  }
}

void _onLoadCity(LoadCityEvent event, Emitter<CityState> emit) {
  print('evenement : $event');
}

void _onCityEvent(ChangeCityEvent event, Emitter<CityState> emit) {
  var test = ChangeCityEvent(event);
  print(test.toString());
}
