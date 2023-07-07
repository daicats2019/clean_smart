import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Route/constan_route.dart';

class DuplicateNamePreview extends StatefulWidget {
  const DuplicateNamePreview({Key? key}) : super(key: key);

  @override
  State<DuplicateNamePreview> createState() => _DuplicateNamePreviewState();
}

class _DuplicateNamePreviewState extends State<DuplicateNamePreview> {
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
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.asset(
                'assets/images/iconBack.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Text(
              "All Contacts",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),

        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                child: Column(
                  children: [

                    Container(
                        width: 414,
                        height: 43,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text(
                            'MERGED CCONTACT (PREVIEW)',
                            style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),

                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: 414,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Image.asset(
                                    'assets/images/Group 25405.png',
                                    width: 48,
                                    height: 48,
                                  ),
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 6),
                                      child: Text(
                                        'Abigail',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Text(
                                      '0987654321, 0336525244, 0981025694',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                        width: 414,
                        height: 43,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text(
                            'DUPLICATE (WILL BE DELETED)',
                            style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),

                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: 414,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Image.asset(
                                    'assets/images/Group 25405.png',
                                    width: 48,
                                    height: 48,
                                  ),
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 6),
                                      child: Text(
                                        'Abigail',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Text(
                                      '0987654321, 0336525244, 0981025694',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: 414,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Image.asset(
                                    'assets/images/Group 25405.png',
                                    width: 48,
                                    height: 48,
                                  ),
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 6),
                                      child: Text(
                                        'Abigail',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Text(
                                      '0987654321, 0336525244, 0981025694',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        SizedBox(height: 250,),
                 Center(child: buttonScan())

            ],
          ),
        ),

    );
  }
  Widget buttonScan() {
    return Container(
      width: 374,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30)),
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, NamedRoute.deleteContact,arguments: null);
          },
          child: Text(
            'SCAN',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
