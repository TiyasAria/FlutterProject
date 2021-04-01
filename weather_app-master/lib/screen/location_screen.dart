import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:weather_app/services/weather.dart';
import 'package:weather_app/utils/common.dart';
import 'package:weather_app/utils/weather_icon.dart';
import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  final weatherData;

  LocationScreen({this.weatherData});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int temprature;
  String cityName;
  String country;
  String main;
  IconData weatherIcon;
  double speed;
  int humidity;
  int pressure;
  var formattedDate;
  String wallurl;
  WeatherModel weatherModel = WeatherModel();
  WeatherIcon weatherIcons = WeatherIcon();

  @override
  void initState() {
    super.initState();
    updateUI(widget.weatherData);
  }

  void updateUI(dynamic weather) {
    setState(() {
      temprature = weather['main']['temp'].toInt();
      humidity = weather['main']['humidity'].toInt();
      pressure = weather['main']['pressure'].toInt();
      speed = weather['wind']['speed'].toDouble();
      var condition = weather['weather'][0]['id'];
      main = weather['weather'][0]['description'];
      cityName = weather['name'];
      country = weather['sys']['country'];
      var timezone = weather['timezone'];
      var currDate = DateTime.now().toUtc().add(Duration(seconds: timezone));
      formattedDate = formatDate(
        currDate,
        [DD, ' | ', M, ' ', dd, ' | ', HH, ':', nn],
      );
      wallurl = (6 <= currDate.hour && currDate.hour <= 18)
          ? 'weather2-01.jpg'
          : 'weather1-01.jpg';
      weatherIcon = weatherIcons.getWeatherIcon(condition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$wallurl'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.7), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 15.0),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () async {
                        var currWeather = await weatherModel.getWeatherData();
                        updateUI(currWeather);
                      },
                      child: Icon(
                        FlutterIcons.location_evi,
                        size: 40.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () async {
                        var cityName = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CityScreen();
                            },
                          ),
                        );
                        if (cityName != null) {
                          var currWeatherData =
                          await weatherModel.getCityWeather(cityName);
                          print(currWeatherData);
                          updateUI(currWeatherData);
                        }
                      },
                      child: Icon(
                        FlutterIcons.search_evi,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '$temprature°',
                          style: TempTextStyle,
                        ),
                        Icon(
                          weatherIcon,
                          size: 60.0,
                        ),
                      ],
                    ),
                    Text(
                      main,
                      style: DescStyle,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$cityName, $country',
                        style: DateStyle,
                      ),
                      Text(
                        formattedDate,
                        style: DateStyle,
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              FlutterIcons.wind_fea,
                              size: 30.0,
                            ),
                            Icon(
                              FlutterIcons.md_speedometer_ion,
                              size: 30.0,
                            ),
                            Icon(
                              FlutterIcons.wi_humidity_wea,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              '${speed.toString()} m/s',
                            ),
                            Text(
                              '${pressure.toString()} Pa',
                            ),
                            Text(
                              '${humidity.toString()} g/m³',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
