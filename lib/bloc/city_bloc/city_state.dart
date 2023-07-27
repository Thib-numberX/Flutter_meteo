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

class ChangeCityState extends CityState {
  const ChangeCityState({required super.valueCityState});

  // permet à bloc de comparer la valeur
  @override
  List<Object> get props => [valueCityState];
}
