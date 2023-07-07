import 'package:flutter/material.dart';

import '../../Route/constan_route.dart';

class SceenShot extends StatefulWidget {
  const SceenShot({Key? key}) : super(key: key);

  @override
  State<SceenShot> createState() => _SceenShotState();
}

class _SceenShotState extends State<SceenShot> {
  bool _ischeck = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            "Screen Shot",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                    'Select all',
                  style: TextStyle(color: Colors.blue),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 375,
                  child: Column(
                    children: [
                    SizedBox(height: 10,),

                      SizedBox(
                        height: 3,
                      ),
                      Row(
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset('assets/images/NoPath Copy.png',
                                    width: 121, height: 121, fit: BoxFit.fill),
                              ),
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

                          ]),
                        ],
                      ),
                      Row(
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset('assets/images/NoPath Copy.png',
                                    width: 121, height: 121, fit: BoxFit.fill),
                              ),
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

                          ]),
                        ],
                      ),
                      Row(
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset('assets/images/NoPath Copy.png',
                                    width: 121, height: 121, fit: BoxFit.fill),
                              ),
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

                          ]),
                        ],
                      ),
                      Row(
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset('assets/images/NoPath Copy.png',
                                    width: 121, height: 121, fit: BoxFit.fill),
                              ),
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

                          ]),
                        ],
                      ),
                      Row(
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset('assets/images/NoPath Copy.png',
                                    width: 121, height: 121, fit: BoxFit.fill),
                              ),
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

                          ]),
                        ],
                      ),
                      Row(
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

                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset('assets/images/NoPath Copy.png',
                                    width: 121, height: 121, fit: BoxFit.fill),
                              ),
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

                          ]),
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
