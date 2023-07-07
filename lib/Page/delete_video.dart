import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';

class DeletaVideo extends StatefulWidget {
  const DeletaVideo({Key? key}) : super(key: key);

  @override
  State<DeletaVideo> createState() => _DeletaVideoState();
}

class _DeletaVideoState extends State<DeletaVideo> {
  bool _ischeck = false;

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
              "Delete Videos",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Select all',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              DialogFilter(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Stack(children: [
                        Image.asset('assets/images/NoPath Copy.png',
                            width: 121, height: 121, fit: BoxFit.fill),
                        Positioned(
                          top: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              _ischeck = !_ischeck;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  _ischeck == true
                                      ? 'assets/images/Radius box (State 2).png'
                                      : 'assets/images/Radius box (State 3).png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 37,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3)),
                            child: Center(
                                child: Text(
                              '00:25',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _ischeck == true
            ? Container(
                height: 110,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    buttonScan(),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )
            : SizedBox(
                height: 1,
              ));
  }

  Widget buttonScan() {
    return Container(
      width: 360,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(30)),
      child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Center(
                    child: Text(
                  'Delete image (3)',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                )),
                content: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      'Images will be deleted from gallery.',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
                actions: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(
                        color: Colors.grey,
                        //                   <--- border color
                        width: 1.0,
                      )),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: 42,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 17),
                                ))),
                        Container(
                          color: Colors.grey,
                          height: 42,
                          width: 1,
                        ),
                        Container(
                            height: 42,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, NamedRoute.organisePage,
                                      arguments: null);
                                },
                                child: Text('OK',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 17))))
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          child: Text(
            'DELETE (12)',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )),
    );
  }

  Widget DialogFilter() {
    return Container(
      width: double.infinity,
      child: TextButton(

        onPressed: () {
          showDialog(
              context: context,
              builder: (context)  =>
                  CupertinoAlertDialog(

                    title: Text("Filter",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),),

                    actions: [
                      CupertinoDialogAction(onPressed: (){

                      }, child: Text("All videos",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.blue))),
                      CupertinoDialogAction(onPressed: (){

                      }, child: Text("> 1GB",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.blue))),
                      CupertinoDialogAction(onPressed: (){

                      }, child: Text("500 MB - 1GB",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.blue))),
                      CupertinoDialogAction(onPressed: (){

                      }, child: Text("100 - 500 MB",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.blue))),
                      CupertinoDialogAction(onPressed: (){

                      }, child: Text("10 - 100 MB",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.blue))),
                      CupertinoDialogAction(onPressed: (){

                      }, child: Text("< 10 MB",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.blue))),
                      CupertinoDialogAction(onPressed: (){
                            Navigator.pop(context);
                      }, child: Text("Cancel",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue))),

                    ],

                  )

          );
        },
        child: Container(
          width: 374,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'All videos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                )
                // Image.asset('assets/images/Group 25380.png'),
              ]),
        ),
      ),
    );
  }
}
