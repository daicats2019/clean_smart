import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';

class Locations extends StatefulWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              'assets/images/iconBack.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Text(
            "Locations",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NamedRoute.albumLocations,
                            arguments: null);
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/NoPath hawai.png',
                            width: 170,
                            height: 177,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text('California'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('124'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NamedRoute.albumLocations,
                            arguments: null);
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/NoPath hawai.png',
                            width: 170,
                            height: 177,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text('California'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('124'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NamedRoute.albumLocations,
                            arguments: null);
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/NoPath hawai.png',
                            width: 170,
                            height: 177,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text('California'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('124'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NamedRoute.albumLocations,
                            arguments: null);
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/NoPath hawai.png',
                            width: 170,
                            height: 177,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text('California'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('124'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NamedRoute.albumLocations,
                            arguments: null);
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/NoPath hawai.png',
                            width: 170,
                            height: 177,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text('California'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('124'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NamedRoute.albumLocations,
                            arguments: null);
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/NoPath hawai.png',
                            width: 170,
                            height: 177,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text('California'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('124'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
