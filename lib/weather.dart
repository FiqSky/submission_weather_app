import 'package:flutter/material.dart';
import 'package:submission_weather_app/model/main_list.dart';

class Weather extends StatelessWidget{
  final MainListModel _mainListModel;

  Weather({required this._mainListModel});

  final _cityDetails = Center(
    child: Column(
      children: <Widget>[
        const Text("Indonesia",
          style: TextStyle(
            fontSize: 36.0,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 10.0,),
        const Text("Today",
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w300
          ),
        ),
        const SizedBox(height: 6.0,),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("Noon",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                ),
              ),
              Icon(Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 18.0,)
            ],
          ),
        ),
      ],
    ),
  );

  //second part; temperature details
  final _tempDetails = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      const Icon(
        Icons.wb_sunny,
        size: 74.0,
        color: Colors.white,
      ),
      const SizedBox(width: 20.0,),
      Column(
        children: const <Widget>[
          Text("28°C",
            style: TextStyle(
                fontSize: 54.0,
                color: Colors.white,
                fontWeight: FontWeight.w200
            ),
          ),
          Text("Mostly Sunny",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w300
            ),
          )
        ],
      )
    ],
  );

  //utility function to lay UI for each item on part three
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

  //part three; container for extra weather details
  final _extraDetails = Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      getItem(Icons.ac_unit, 5, "km/hr"),
      getItem(Icons.ac_unit, 3, "%"),
      getItem(Icons.ac_unit, 20, "%"),
    ],
  );


  //Weather details container widget
  _weatherData(){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _cityDetails,
          _tempDetails,
          _extraDetails,
        ],
      ),
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
      body: _weatherData(),
      drawer: const Drawer(
      ),
    );
  }

}