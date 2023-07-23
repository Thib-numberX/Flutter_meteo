part of 'city_bloc.dart';

class CityState extends Equatable {
  final String initialCityState;
  const CityState({
    this.initialCityState = 'Toulouse',
  });

  @override
  List<Object> get props => [initialCityState];
}

class CityInitialState extends CityState {
  const CityInitialState();
}
