import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Route/constan_route.dart';

class PhotoCompress extends StatefulWidget {
  const PhotoCompress({Key? key}) : super(key: key);

  @override
  State<PhotoCompress> createState() => _PhotoCompressState();
}

class _PhotoCompressState extends State<PhotoCompress> {
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
            "Photo Compress",
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
                  Navigator.pushNamed(context, NamedRoute.photoCompressPreview,arguments: null);
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
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20),
               child: Text(
                "Searching for Photos",
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black),
            ),
             ),

            const SizedBox(
              width: 320,
              child: Text(
                "We use advanced algorithms to retain the original Image quality and the best compression",
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey),textAlign: TextAlign.center
              ),
            ),
          ],
        ),
      ),
    );
  }
}
