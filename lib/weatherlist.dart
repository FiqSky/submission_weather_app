import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_weather_app/model/main_list.dart';
import 'package:submission_weather_app/weather.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text('WeatherApp'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return const MainList();
        },
      ),
    );
  }
}

class MainList extends StatelessWidget{
  const MainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final MainListModel list = mainListModel[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Weather(list: list);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(list.imageAsset,height: 80.0,),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          list.country,
                          style: const TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(list.averageWeather),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: mainListModel.length,
    );
  }
}