class MainListModel {
  String country;
  String day;
  String timeDays;
  String temperature;
  String averageWeather;
  String extraWind;
  String extraHumidity;
  String extraPrecipitation;

  MainListModel({
    required this.country,
    required this.day,
    required this.timeDays,
    required this.temperature,
    required this.averageWeather,
    required this.extraWind,
    required this.extraHumidity,
    required this.extraPrecipitation,
  });
}

var mainListModel = [
  MainListModel(
    country: 'Indonesia',
    day: 'Today',
    timeDays: 'Night',
    temperature: '24',
    averageWeather: 'Mostly Sunny',
    extraWind: '10',
    extraHumidity: '89',
    extraPrecipitation: '2',
  ),
  MainListModel(
    country: 'Singapore',
    day: 'Today',
    timeDays: 'Night',
    temperature: '29',
    averageWeather: 'Mostly Sunny',
    extraWind: '13',
    extraHumidity: '74',
    extraPrecipitation: '4',
  ),
  MainListModel(
    country: 'Malaysia',
    day: 'Today',
    timeDays: 'Night',
    temperature: '27',
    averageWeather: 'Mostly Sunny',
    extraWind: '0',
    extraHumidity: '78',
    extraPrecipitation: '14',
  ),
  MainListModel(
    country: 'Vietnam',
    day: 'Today',
    timeDays: 'Night',
    temperature: '28',
    averageWeather: 'Mostly Sunny',
    extraWind: '3',
    extraHumidity: '90',
    extraPrecipitation: '9',
  ),
  MainListModel(
    country: 'Myanmar',
    day: 'Today',
    timeDays: 'Night',
    temperature: '26',
    averageWeather: 'Mostly Sunny',
    extraWind: '10',
    extraHumidity: '89',
    extraPrecipitation: '2',
  ),
  MainListModel(
    country: 'Cambodia',
    day: 'Today',
    timeDays: 'Night',
    temperature: '24',
    averageWeather: 'Mostly Sunny',
    extraWind: '10',
    extraHumidity: '79',
    extraPrecipitation: '2',
  ),
  MainListModel(
    country: 'Philippines',
    day: 'Today',
    timeDays: 'Night',
    temperature: '28',
    averageWeather: 'Mostly Sunny',
    extraWind: '1',
    extraHumidity: '81',
    extraPrecipitation: '2',
  ),
  MainListModel(
    country: 'Thailand',
    day: 'Today',
    timeDays: 'Night',
    temperature: '27',
    averageWeather: 'Mostly Sunny',
    extraWind: '11',
    extraHumidity: '85',
    extraPrecipitation: '0',
  ),
];