import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Route/constan_route.dart';

class VideoCompressSuccess extends StatefulWidget {
  const VideoCompressSuccess({Key? key}) : super(key: key);

  @override
  State<VideoCompressSuccess> createState() => _VideoCompressSuccessState();
}

class _VideoCompressSuccessState extends State<VideoCompressSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, NamedRoute.compress,
                arguments: null);
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
            "Video Compression",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 177,
            height: 177,
            child: Stack(children: [
              Image.asset('assets/images/NoPath Copy2.png',
                  width: 177, height: 177, fit: BoxFit.fill),
              Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3)),
                    child: Center(
                      child: Image.asset(
                          'assets/images/Path 33537.png',
                          width: 25,
                          height: 20,
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: Container(
                  width: 37,
                  height: 17,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3)),
                  child: Center(
                      child: Text(
                        '00:25',
                        style: TextStyle(
                            fontSize: 10, color: Colors.white),
                      )),
                ),
              )
            ]),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: const Text(
              'Compress successfull',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              width: 320
              ,height: 37,
              child: Text(
                  'Delete original videos and can save',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                  ),textAlign: TextAlign.center
              ),
            ),
          ),
          const Text(
            '143.69 MB',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: buttonScanDelete(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: buttonScanDone(),
          ),

        ],
      ),
    );
  }
  Widget buttonScanDelete() {
    return Center(
      child: Container(
        width: 374,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(30)),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, NamedRoute.compress,
                  arguments: null);
            },
            child: Text(
              'DELETE',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
  Widget buttonScanDone() {
    return Center(
      child: Container(
        width: 374,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, NamedRoute.compress,
                  arguments: null);
            },
            child: Text(
              'BACK',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
