import 'package:flutter/material.dart';
import 'package:weather2/models/constants.dart';

import 'home_page.dart';

class GetStarted extends StatefulWidget {
   const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: firstColor,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/start.png'),
            // const Padding(
            //     padding: EdgeInsets.fromLTRB(20, 0, 20, 25),
            //     child: Text('Weather',
            //     style: TextStyle(
            //       fontSize: fontSize16,
            //       fontWeight: FontWeight.w600,
            //     ),
            //     ),
            //    ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 40),
                  maximumSize: const Size.fromHeight(40),
                  backgroundColor: secondColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: const Text('Get Started',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: fontSize16,
                    color: firstColor,
                  )),
            ),
          ],
        )),
      ),
    );
  }
  }
