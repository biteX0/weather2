import 'package:flutter/material.dart';
import 'package:weather2/pages/get_started.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final _cityTextController = TextEditingController();
  // final _dataService = DataService();

  // WeatherResponse _response;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetStarted(),
    );

    //       home: Scaffold(
    //       body: Container(
    //         width: MediaQuery.of(context).size.width,
    //         height: MediaQuery.of(context).size.height,
    //       color: primaryColor,
    //       child:
    //           if (_response != null)
    //           Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Image.asset('assets/start.png'),
    //           const Padding(
    //               padding: EdgeInsets.fromLTRB(20, 0, 20, 25),
    //               child: SizedBox(
    //                 width: 200,
    //                 child: TextField(
    //                   controller: _cityTextController,
    //                   decoration: InputDecoration(labelText: 'City'),
    //                   textAlign: TextAlign.center,
    //                 ),
    //               )),
    //           ElevatedButton(
    //             onPressed: _searchCity,
    //             style: ElevatedButton.styleFrom(
    //                 minimumSize: const Size(200, 40),
    //                 maximumSize: const Size.fromHeight(40),
    //                 backgroundColor: secondaryColor,
    //                 shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(30))),
    //             child: const Text('Search',
    //                 maxLines: 1,
    //                 overflow: TextOverflow.ellipsis,
    //                 style: TextStyle(
    //                   fontSize: 16,
    //                   color: primaryColor,
    //                 )),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ));
    // }

    // void _searchCity() async {
    //   final response = await
    //   _dataService.getWeather(_cityTextController.text);
    //   print(response.cityName);
    //   // setState(() => _response = response);
    // }
  }
}
