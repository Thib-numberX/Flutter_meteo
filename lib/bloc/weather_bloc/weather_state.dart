part of 'weather_bloc.dart';

class WeatherState extends Equatable {
  final dynamic currentWeatherValue;
  const WeatherState({required this.currentWeatherValue});

  @override
  List<Object> get props => [currentWeatherValue];
}
