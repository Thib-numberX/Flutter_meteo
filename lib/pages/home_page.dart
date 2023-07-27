import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meteo/bloc/city_bloc.dart';
import '../mock/city_data.dart';
import '../components/weather_card.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CityBloc(),
        child: Scaffold(
            appBar: AppBar(
              title: Text(title),
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  BlocBuilder<CityBloc, CityState>(
                    builder: (BuildContext context, CityState state) =>
                        DropdownButton(
                      value: state.valueCityState,
                      items: cities.map((city) {
                        print(city);
                        return DropdownMenuItem(
                          value: city,
                          child: Text(city),
                        );
                      }).toList(),
                      onChanged: (String? value) => context
                          .read<CityBloc>()
                          .add(ChangeCityEvent(newValueCity: value)),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Center(
                    child: WeatherCard(),
                  ),
                ],
              ),
            )));
  }
}
