import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';

class DoneCleanUp extends StatefulWidget {
  const DoneCleanUp({Key? key}) : super(key: key);

  @override
  State<DoneCleanUp> createState() => _DoneCleanUpState();
}

class _DoneCleanUpState extends State<DoneCleanUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, NamedRoute.organisePage,
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
            "Smart Cleaner",
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
          Image.asset(
            'assets/images/Group 25380.png',
            width: 106,
            height: 106,
            fit: BoxFit.contain,
          ),
          const Text(
            '1,83 GB',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'has been cleaned up',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: buttonScan(),
          )
        ],
      ),
    );
  }

  Widget buttonScan() {
    return Center(
      child: Container(
        width: 374,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, NamedRoute.organisePage,
                  arguments: null);
            },
            child: Text(
              'DONE',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
