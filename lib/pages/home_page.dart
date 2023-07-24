import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meteo/bloc/city_bloc.dart';
import '../mock/city_data.dart';

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
                      onChanged: (String? value) =>
                          CityBloc()..add(ChangeCityEvent(newValueCity: value)),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Center(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(
                                'ville : Nice',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 150,
                                width: 150,
                                child: Image(
                                  image: NetworkImage(
                                      'https://drive.google.com/uc?id=1Irom8qqRuyx7ExPTI3kMf7FvV1wA2g5-'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Vent : 15% ",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                  ),
                                  Text(
                                    "Température : 25°c",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.clip,
                                  ),
                                  Text(
                                    "Humidité : 10% ",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.fade,
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            )));
  }
}
