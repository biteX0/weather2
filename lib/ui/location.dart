import 'package:flutter/material.dart';
import 'package:weather2/models/city.dart';
import 'package:weather2/models/constants.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  int temperatures = 0;
  int maxTemp = 0;
  int humidity = 0;
  int windSpeed = 0;
  String weatherStateName = 'Loading...';

  String currentDate = 'Loading...';
  String imageUrl = '';
  int woeid = 2112237;
  String location = 'Екатеринбург';

  var selectedCities = City.getSelectedCity();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
    );
  }
}
