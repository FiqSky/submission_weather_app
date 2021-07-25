class MainListModel {
  String country;
  String day;
  String timeDays;
  String temperature;
  String averageWeather;
  String extraWind;
  String extraHumidity;
  String extraPrecipitation;
  String imageAsset;

  MainListModel({
    required this.country,
    required this.day,
    required this.timeDays,
    required this.temperature,
    required this.averageWeather,
    required this.extraWind,
    required this.extraHumidity,
    required this.extraPrecipitation,
    required this.imageAsset,
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
    imageAsset: 'images/sunny.png',
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
    imageAsset: 'images/sunny.png',
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
    imageAsset: 'images/sunny.png',
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
    imageAsset: 'images/sunny.png',
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
    imageAsset: 'images/sunny.png',
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
    imageAsset: 'images/sunny.png',
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
    imageAsset: 'images/sunny.png',
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
    imageAsset: 'images/sunny.png',
  ),
];