
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.blue,
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NamedRoute.wellcomPage,arguments: null);
                  },
                  child: SizedBox(
                    height: 192,
                    width: 192,

                    child: Image.asset(
                      'assets/images/logo.png'
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 300,),
            Text('SMART ClEANER',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white38),)
          ],
        ),
      ),
    );
  }
}
