import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';

class Compress extends StatefulWidget {
  const Compress({Key? key}) : super(key: key);

  @override
  State<Compress> createState() => _CompressState();
}

class _CompressState extends State<Compress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pushNamed(
                context, NamedRoute.organisePage, arguments: null);
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
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: Text(
            "Compress",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 364,
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, NamedRoute.photoCompress, arguments: null);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group 25385.png', width: 50, height: 50,),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text('PHOTO COMPRESS', style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),),
                    ),
                    const Text('Select a photo you need to compress',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 364,
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, NamedRoute.videoCompress, arguments: null);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group 25386.png', width: 50, height: 50,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text('VIDEO COMPRESS', style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                    Text('Select a video you need to compress',
                      style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
