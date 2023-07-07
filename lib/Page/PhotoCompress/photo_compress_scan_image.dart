import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Route/constan_route.dart';

class PhotoCompressScanImage extends StatefulWidget {
  const PhotoCompressScanImage({Key? key}) : super(key: key);

  @override
  State<PhotoCompressScanImage> createState() => _PhotoCompressScanImageState();
}

class _PhotoCompressScanImageState extends State<PhotoCompressScanImage> {
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
                  Navigator.pushNamed(context, NamedRoute.photoCompressScanSuccess,arguments: null);
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
                "Image Compression",
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black),
              ),
            ),

            const SizedBox(
              width: 320,
              child: Text(
                  "We are doing some magic now, please don't close the app in order not to lose all progess",
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
