import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';



class SmartScan extends StatefulWidget {
  const SmartScan({Key? key}) : super(key: key);

  @override
  State<SmartScan> createState() => _SmartScanState();
}

class _SmartScanState extends State<SmartScan> {
  bool _ischeck1 = false;
  bool _ischeck2 = false;
  bool _ischeck3 = false;
  bool _ischeck4 = false;

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
            "Smart Cleaner",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Center(
                  child: Text('Set the time period and choose categories')),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 177,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Jun 12, 2020')),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 9,
                      height: 2,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  Container(
                    width: 177,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('Dec 31, 2021')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 374,
                height: 60,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                              width: 40,
                              height: 40,
                              child:
                                  Image.asset('assets/images/Group 25394.png')),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              ' Similar Photo',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          _ischeck1 = !_ischeck1;
                          setState(() {});
                        },
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              _ischeck1 == true
                                  ? 'assets/images/Radius box.png'
                                  : 'assets/images/Radius box (State 2).png',
                              fit: BoxFit.contain,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 374,
                height: 60,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                              width: 40,
                              height: 40,
                              child:
                                  Image.asset('assets/images/Group 25395.png')),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              ' Screenshots',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          _ischeck2 = !_ischeck2;
                          setState(() {});
                        },
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              _ischeck2 == true
                                  ? 'assets/images/Radius box.png'
                                  : 'assets/images/Radius box (State 2).png',
                              fit: BoxFit.contain,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 374,
                height: 60,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                              width: 40,
                              height: 40,
                              child:
                                  Image.asset('assets/images/Group 25397.png')),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Live Photos',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          _ischeck3 = !_ischeck3;
                          setState(() {});
                        },
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              _ischeck3 == true
                                  ? 'assets/images/Radius box.png'
                                  : 'assets/images/Radius box (State 2).png',
                              fit: BoxFit.contain,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 374,
                height: 60,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          SizedBox(
                              width: 40,
                              height: 40,
                              child:
                                  Image.asset('assets/images/Group 25392.png')),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              ' Similar Video',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          _ischeck4 = !_ischeck4;
                          setState(() {});
                        },
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              _ischeck4 == false
                                  ? 'assets/images/Radius box (State 2).png'
                                  : 'assets/images/Radius box.png',
                              fit: BoxFit.contain,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),

            if (_ischeck1 == false ||
                _ischeck2 == false ||
                _ischeck3 == false ||
                _ischeck4 == false)
              buttonScan()
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
            Navigator.pushNamed(context, NamedRoute.loadingScan,arguments: null);
          },
          child: Text(
            'SCAN',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
