import 'package:flutter/material.dart';
import 'package:weather2/models/constants.dart';

import 'home_page.dart';

class GetStarted extends StatefulWidget {
   GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();


class _GetStartedState extends State<GetStarted> {
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
                    decoration: InputDecoration(labelText: 'City'),
                    textAlign: TextAlign.center,
                  ),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => const HomePage()));
              },
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
  }
  }