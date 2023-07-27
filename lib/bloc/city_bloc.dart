import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  CityBloc() : super(const CityState(valueCityState: 'Toulouse')) {
    on<LoadCityEvent>(_onLoadCity);
    on<ChangeCityEvent>(_onCityEvent);
  }
}

void _onLoadCity(LoadCityEvent event, Emitter<CityState> emit) {
  print('evenement : $event');
}

// bloc fait le lien avec l'event dans city_event. Ici nous n'avons besoin que d'émettre un state avec la nouvelle valeur.
void _onCityEvent(ChangeCityEvent event, Emitter<CityState> emit) {
  emit(CityState.updateCityValue(value: event.newValueCity!));
}
