import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Component/settingitem.dart';
import '../../Component/route_page.dart';
import '../../Route/constan_route.dart';

class WelcomPage2 extends StatefulWidget {
  const WelcomPage2({Key? key}) : super(key: key);

  @override
  State<WelcomPage2> createState() => _WelcomPage2State();
}

class _WelcomPage2State extends State<WelcomPage2> {


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
                            'assets/images/phone.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        width: 220,
                        child: const Column(
                          children: [
                            Text(
                              "Delete duplicate ",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "images and videos",
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
                  Container(
                    width: 25,
                    height: 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),

                  routePage(),
                  routePage(),

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
                  Navigator.pushNamed(context, NamedRoute.wellcomPage3,arguments: null);
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
