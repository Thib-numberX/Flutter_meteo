import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
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
    );
  }
}
