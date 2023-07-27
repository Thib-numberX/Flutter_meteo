import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meteo/bloc/city_bloc/city_bloc.dart';
import '../../services/meteo_service.dart';

part 'weather_state.dart';
part 'weather_event.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  // il faut mettre le state dans le constructeur
  WeatherBloc()
      : super(
          WeatherState(
            currentWeatherValue: CityState(valueCityState: valueCityState),
          ),
        ) {
    on<LoadWeatherState>(_onLoadWeatherState);
  }

  static get valueCityState => null;
}

void _onLoadWeatherState(LoadWeatherState event, Emitter<WeatherState> emit) {
  return;
}
