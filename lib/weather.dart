import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:submission_weather_app/model/main_list.dart';

class Weather extends StatelessWidget{
  final MainListModel list;

  const Weather({Key? key, required this.list}) : super(key: key);

  static getItem(IconData iconData, int value, String measure){
    return Column(
      children: <Widget>[
        Icon(iconData, color: Colors.white, size: 28.0,),
        const SizedBox(height: 4.0,),
        Text('$value', style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w300
        ),
        ),
        Text(measure,
          style: const TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              fontWeight: FontWeight.w300
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Text(list.country,
                    style: const TextStyle(
                      fontSize: 36.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Text(list.day,
                    style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                  const SizedBox(height: 6.0,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(list.timeDays,
                          style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 18.0,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.wb_sunny,
                  size: 74.0,
                  color: Colors.white,
                ),
                const SizedBox(width: 20.0,),
                Column(
                  children: <Widget>[
                    Text(list.temperature,
                      style: const TextStyle(
                          fontSize: 54.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w200
                      ),
                    ),
                    Text(list.averageWeather,
                      style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                getItem(Icons.ac_unit, list.extraWind, "km/hr"),
                getItem(Icons.ac_unit, list.extraHumidity, "%"),
                getItem(Icons.ac_unit, list.extraPrecipitation, "%"),
              ],
            ),
          ],
        ),
      )
    );
  }
}