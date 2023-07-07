import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Route/constan_route.dart';

class DuplicatesEmail extends StatefulWidget {
  const DuplicatesEmail({Key? key}) : super(key: key);

  @override
  State<DuplicatesEmail> createState() => _DuplicatesEmailState();
}

class _DuplicatesEmailState extends State<DuplicatesEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          padding: EdgeInsets.only(left: 50),
          child: Text(
            "Duplicate Emails",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, NamedRoute.duplicateEmailPreview,
                      arguments: null);
                },
                child: Container(
                  width: 374,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                    'assets/images/Group 25405.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abigail@gmail.com',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'Abigail, Abigail 2 , Abi',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Text(
                              ' 3',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              'assets/images/Path8896.png',
                              fit: BoxFit.contain,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, NamedRoute.duplicateEmailPreview,
                      arguments: null);
                },
                child: Container(
                  width: 374,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                    'assets/images/Group 25405.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abigail@gmail.com',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'Abigail, Abigail 2 , Abi',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Text(
                              ' 3',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              'assets/images/Path8896.png',
                              fit: BoxFit.contain,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, NamedRoute.duplicateEmailPreview,
                      arguments: null);
                },
                child: Container(
                  width: 374,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                    'assets/images/Group 25405.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abigail@gmail.com',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  'Abigail, Abigail 2 , Abi',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Text(
                              ' 3',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              'assets/images/Path8896.png',
                              fit: BoxFit.contain,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
