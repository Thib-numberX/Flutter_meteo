part of 'city_bloc.dart';

class CityState extends Equatable {
  final String valueCityState;
  const CityState({
    required this.valueCityState,
  });

  @override
  List<Object> get props => [valueCityState];

  static CityState updateCityValue({required dynamic value}) {
    print(value);
    return CityState(valueCityState: value);
  }
}

// class CityInitialState extends CityState {
//   const CityInitialState();
// }

class ChangeCityState extends CityState {
  const ChangeCityState({required super.valueCityState});

  // final String? changeCity;

  @override
  List<Object> get props => [valueCityState];

  // ChangeCityState({required this.changeCity}) : super(valueCityState: '') {
  //   print(changeCity);
  // }
}
