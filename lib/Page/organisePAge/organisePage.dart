import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Route/constan_route.dart';

class Organise extends StatefulWidget {
  const Organise({Key? key}) : super(key: key);

  @override
  State<Organise> createState() => _OrganiseState();
}

class _OrganiseState extends State<Organise> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade600,
        leading: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, NamedRoute.settingPage,
                arguments: null);
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              'assets/images/setting.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            "ORGANISE",
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, NamedRoute.premiumPage,
                  arguments: null);
            },
            child: Container(
              width: 50,
              height: 25,
              child: Image.asset('assets/images/tagsVip.png'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, ),
              child: Center(
                child: CircularPercentIndicator(
                  radius: 140.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.3,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "34%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "storage",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                      const Text(
                        "85 GB / 256 GB",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {

                Navigator.pushNamed(context, NamedRoute.smartScarn,arguments: null);
              },
              child: Container(
                width: 374,
                height: 130,
                color: Colors.white.withOpacity(0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          width: 36,
                          height: 36,
                          child: Image.asset(
                            "assets/images/scanner.png",
                            fit: BoxFit.contain,
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Smart Scan",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Smart analyst your gallery",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 374,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NamedRoute.deleteImage,arguments: null);
                      },
                      child: Container(
                        width: 174,
                        height: 130,
                        color: Colors.white.withOpacity(0.1),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    width: 36,
                                    height: 36,
                                    child: Image.asset(
                                      "assets/images/gallery-1.png",
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Image",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "Organise",
                                  style:
                                      TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 174,
                      height: 130,
                      color: Colors.white.withOpacity(0.1),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, NamedRoute.deleteVideo,arguments: null);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 80.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 0.0),
                                child: SizedBox(
                                    child: Image.asset(
                                      "assets/images/video-vertical.png",
                                      width: 36,
                                      height: 36,
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "Videos",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0),
                                child: Text(
                                  "Organise",
                                  style:
                                      TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 50),
              child: Container(
                width: 374,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NamedRoute.deleteContact,arguments: null);
                      },
                      child: Container(
                        width: 174,
                        height: 130,
                        color: Colors.white.withOpacity(0.1),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    width: 36,
                                    height: 36,
                                    child: Image.asset(
                                      "assets/images/profile-2.png",
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Contacts",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "Organise",
                                  style:
                                      TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: 174,
                      height: 130,
                      color: Colors.white.withOpacity(0.1),
                      child: TextButton(
                         onPressed: (){
                          Navigator.pushNamed(context, NamedRoute.compress,arguments: null);

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: SizedBox(
                                    width: 36,
                                    height: 36,
                                    child: Image.asset(
                                      "assets/images/video-vertical.png",
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  "Compress",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0),
                                child: Text(
                                  "Photo & Videos",
                                  style:
                                      TextStyle(fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
