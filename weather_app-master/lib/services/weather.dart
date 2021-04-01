import 'package:weather_app/services/location.dart';
import 'package:weather_app/services/network.dart';

const apiKey = '634aab087dad09c99edca1672b3f6b03';

class WeatherModel {

  Future<dynamic> getCityWeather(cityName) async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&units=metric&appid=$apiKey';
    Network networkhelper = Network(url);
    var weatherData = await networkhelper.getData();
    return weatherData;
  }

  Future<dynamic> getWeatherData() async {
    Location location = Location();
    await location.getCurrentLocation();
    double latitude = location.latitude;
    double longitude = location.longitude;
    print(latitude);
    print(longitude);
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&units=metric&appid=$apiKey';
    Network networkhelper = Network(url);
    var weatherData = await networkhelper.getData();
    return weatherData;
  }
}
