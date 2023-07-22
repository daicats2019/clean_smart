import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Route/constan_route.dart';

class LoadingScan extends StatefulWidget {
  const LoadingScan({Key? key}) : super(key: key);

  @override
  State<LoadingScan> createState() => _LoadingScanState();
}

class _LoadingScanState extends State<LoadingScan> {
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
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            "Smart Cleaner",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    body:  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 60, 70, 10),
            child: TextButton(
              onPressed: (){
                  Navigator.pushNamed(context, NamedRoute.cleanUpScan,arguments: null);
              },
              child: CircularPercentIndicator(
                radius: 140.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.5,
                center: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "50%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          color: Colors.blue),
                    ),


                  ],
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.purpleAccent,
              ),
            ),
          ),
          const Text(
            "Scanning..",
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.black),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 250),
            child: Text(
              "Don't leave the app while scanning, progress will be lost.",
              style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
