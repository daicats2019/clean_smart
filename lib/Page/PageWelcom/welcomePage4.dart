import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Component/route_page.dart';
import '../../Route/constan_route.dart';

class WelcomPage4 extends StatefulWidget {
  const WelcomPage4({Key? key}) : super(key: key);

  @override
  State<WelcomPage4> createState() => _WelcomPage4State();
}

class _WelcomPage4State extends State<WelcomPage4> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: TextButton(
                        onPressed: () {},
                        child: SizedBox(
                          height: 298,
                          width: 298,
                          child: Image.asset(
                            'assets/images/Group25376.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 300,
                        child: const Column(
                          children: [
                            Text(
                              "Compress images and ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "videos",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            )
                          ],
                        )),
                  ],
                ),
              ],
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  routePage(),
                  routePage(),
                  routePage(),
                  Container(
                    width: 25,
                    height: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),

                ],
              ),
            ),
            Container(
                width: 374,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, NamedRoute.organisePage,arguments: null);
                    },
                    child: const Text(
                      "NEXT",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )))
          ],
        ),
      ),
    );
  }
}

