import 'package:flutter/material.dart';

import '../../Route/constan_route.dart';

class SimilarPhoto extends StatefulWidget {
  const SimilarPhoto({Key? key}) : super(key: key);

  @override
  State<SimilarPhoto> createState() => _SimilarPhotoState();
}

class _SimilarPhotoState extends State<SimilarPhoto> {
  bool _ischeck = false;

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
          padding: EdgeInsets.only(left: 60),
          child: Text(
            "Similar Photo",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Deselect',
                  style: TextStyle(color: Colors.blue),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 375,
                  height: 314,
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "9 Image",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Deselect All",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Stack(children: [
                            Image.asset('assets/images/NoPath Copy.png',
                                width: 187, height: 187, fit: BoxFit.fill),
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
                              left: 10,
                              child: Container(
                                width: 50,
                                height: 14,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade300),
                                child: const Center(
                                    child: Text(
                                      'Bestest',
                                      style: TextStyle(fontSize: 10),
                                    )),
                              ),
                            ),

                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Image.asset('assets/images/NoPath Copy.png',
                                  width: 92, height: 93, fit: BoxFit.fill),
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Image.asset('assets/images/NoPath Copy.png',
                                  width: 92, height: 93, fit: BoxFit.fill),
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Image.asset('assets/images/NoPath Copy.png',
                                  width: 92, height: 93, fit: BoxFit.fill),
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

                            ]),
                          ),
                          Stack(children: [
                            Image.asset('assets/images/NoPath Copy.png',
                                width: 92, height: 93, fit: BoxFit.fill),
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

                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 375,
                  height: 314,
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "9 Image",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Deselect All",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Stack(children: [
                            Image.asset('assets/images/NoPath Copy.png',
                                width: 187, height: 187, fit: BoxFit.fill),
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
                              left: 10,
                              child: Container(
                                width: 50,
                                height: 14,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade300),
                                child: const Center(
                                    child: Text(
                                  'Bestest',
                                  style: TextStyle(fontSize: 10),
                                )),
                              ),
                            ),

                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Image.asset('assets/images/NoPath Copy.png',
                                  width: 92, height: 93, fit: BoxFit.fill),
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Image.asset('assets/images/NoPath Copy.png',
                                  width: 92, height: 93, fit: BoxFit.fill),
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Image.asset('assets/images/NoPath Copy.png',
                                  width: 92, height: 93, fit: BoxFit.fill),
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

                            ]),
                          ),
                          Stack(children: [
                            Image.asset('assets/images/NoPath Copy.png',
                                width: 92, height: 93, fit: BoxFit.fill),
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

                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 375,
                  height: 314,
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "9 Image",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Deselect All",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Stack(children: [
                            Image.asset('assets/images/NoPath Copy2.png',
                                width: 187, height: 187, fit: BoxFit.fill),
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
                              left: 10,
                              child: Container(
                                width: 50,
                                height: 14,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade300),
                                child: const Center(
                                    child: Text(
                                  'Bestest',
                                  style: TextStyle(fontSize: 10),
                                )),
                              ),
                            ),

                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy2.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy2.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy2.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    child: Stack(children: [
                                      Image.asset(
                                          'assets/images/NoPath Copy2.png',
                                          width: 92,
                                          height: 93,
                                          fit: BoxFit.fill),
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

                                    ]),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
        bottomNavigationBar: _ischeck == true ? Container(
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
              ),
            ],
          ),
        ):SizedBox(height: 1,)
    );
  }

  Widget buttonScan() {
    return Container(
      width: 374,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(30)),
      child: TextButton(
          onPressed: () {
            showDialog(context: context, builder: (context) => AlertDialog(
              title: Center(child: Text('Delete image (3)',style: TextStyle(color: Colors.black,fontSize: 17),)),
              content: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Text('Images will be deleted from gallery.',style: TextStyle(color: Colors.black,fontSize: 13), textAlign: TextAlign.center,)),
                ],
              ),
              actions: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    border: Border(
                        top:  BorderSide(

                          color: Colors.grey, //                   <--- border color
                          width: 1.0,
                        )
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 42,
                          child: TextButton(onPressed: () {}, child: Text('Cancel',style: TextStyle(color: Colors.blue,fontSize: 17),))),

                      Container(
                        color: Colors.grey,
                        height: 42,
                        width: 1,
                      ),

                      Container(
                          height: 42,
                          child: TextButton(onPressed: () {
                            Navigator.pushNamed(context, NamedRoute.deleteImage,arguments: null);
                          }, child: Text('OK',style: TextStyle(color: Colors.blue,fontSize: 17))))
                    ],
                  ),
                ),
              ],
            ),);
          },
          child: Text(
            'DELETE (12)',
            style: TextStyle(color: Colors.white,fontSize: 15),
          )),
    );
  }
}
