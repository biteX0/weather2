import 'package:flutter/material.dart';
import 'package:weather2/ui/location.dart';
import 'package:weather2/models/city.dart';
import 'package:weather2/models/constants.dart';


class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() {
    return _WelcomeState();
  }
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    List<City> cities = City.citiesList.where((city) {
      return city.isDefault == false;
    }).toList();

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 10, top: 30, right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: size.height * .07,
            width: size.width,
            decoration: BoxDecoration(
                border: cities[index].inSelected == true
                    ? Border.all(
                        color: secondaryColor,
                      )
                    : Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(.5),
                  )
                ]),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        cities[index].inSelected = !cities[index].inSelected;
                      });
                    },
                    child: Image.asset(
                      cities[index].inSelected == true
                          ? 'assets/oval_sel.png'
                          : 'assets/oval_unsel.png',
                      width: 25,
                    )),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  cities[index].city,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: cities[index].inSelected == true
                          ? secondaryColor
                          : const Color.fromARGB(192, 7, 7, 7)),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        child: const Icon(Icons.check),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Location(),
            ),
          );
        },
      ),
    );
  }
}
