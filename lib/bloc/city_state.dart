part of 'city_bloc.dart';

class CityState extends Equatable {
  static late final String initialCityState;
  const CityState({
    this.initialCityState = 'Toulouse',
  });

  @override
  List<Object> get props => [initialCityState];
}

class CityInitialState extends CityState {
  const CityInitialState();
}

class ChangeCityState extends CityState {
  final String? changeCity;
  @override
  // TODO: implement initialCityState
  // String get initialCityState => super.initialCityState;
  ChangeCityState({required this.changeCity}) {
    CityState.initialCityState = changeCity!;
  }
}
