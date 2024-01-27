import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:weather2/models/constants.dart';
import 'package:weather2/models/theme_background.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, BuildContext? builder});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final WeatherFactory _weatherFactory = WeatherFactory(apiKey);
  Weather? _weather;

  @override
  void initState() {
    super.initState();
    _weatherFactory.currentWeatherByCityName("Yekaterinburg").then((w) {
      setState(() {
        _weather = w;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [const BackgroundApp(), _buildUi()],
      ),
    );
  }

  Widget _buildUi() {
    if (_weather == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _locationHeader(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.08,
          ),
          _dateInfo(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          _weatherIcon(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.02,
          ),
          _currentTemp(),
        ],
      ),
    );
  }

  Widget _locationHeader() {
    return Text(
      _weather?.areaName ?? "",
      style: const TextStyle(
        fontSize: fontSize20,
        color: fontColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _dateInfo() {
    DateTime now = _weather!.date!;
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateFormat("EEEE").format(now),
              style: const TextStyle(
                color: firstColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "  ${DateFormat("MMMd").format(now)}",
              style: const TextStyle(
                color: firstColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _weatherIcon() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.30,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://openweathermap.org/img/wn/${_weather?.weatherIcon}@4x.png'),
          )),
        ),
        Text(
          _weather?.weatherDescription ?? "",
          style: const TextStyle(
            color: firstColor,
            fontSize: fontSize20,
          ),
        ),
      ],
    );
  }

  Widget _currentTemp() {
    return Text(
      "${_weather?.temperature?.celsius?.toStringAsFixed(0)} ℃",
      style: const TextStyle(
        color: fontColor,
        fontSize: fontSize40,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
