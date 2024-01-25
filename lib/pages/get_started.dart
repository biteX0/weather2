import 'package:flutter/material.dart';
import 'package:weather2/models/constants.dart';
import 'package:weather2/service.dart';

class GetStarted extends StatelessWidget {
   GetStarted({super.key});
  final _dataService = DataService();
  final _cityTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/start.png'),
            const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 25),
                child: SizedBox(
                  width: 200,
                  child: TextField(
                    // controller: _cityTextController,
                    decoration: InputDecoration(labelText: 'City'),
                    textAlign: TextAlign.center,
                  ),
                )),
            ElevatedButton(
              onPressed: _searchCity,
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 40),
                  maximumSize: const Size.fromHeight(40),
                  backgroundColor: secondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: const Text('Search',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                  )),
            ),
          ],
        )),
      ),
    );
  }

  void _searchCity() {
    _dataService.getWeather(_cityTextController.text);
  }
}
