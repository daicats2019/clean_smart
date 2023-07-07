import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Route/constan_route.dart';

class PhotoCompressPreview extends StatefulWidget {
  const PhotoCompressPreview({Key? key}) : super(key: key);

  @override
  State<PhotoCompressPreview> createState() => _PhotoCompressPreviewState();
}

class _PhotoCompressPreviewState extends State<PhotoCompressPreview> {
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
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            "Photo Compress",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 30,),
            Center(
              child: Container(
                width: 364,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: TextButton(
                  onPressed: () {

                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text('Saved 1501.5 MB', style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),),
                      ),
                      Text('2493 photos can be compressed',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 356,
              height: 37,
              child: Text('Compressed photos will be placed at the end of photo album.',
                  style: TextStyle(color: Colors.grey,fontSize: 12)),
            ),


            Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(

                    color: Colors.grey, //                   <--- border color
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                      : 'assets/images/Radius box.png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Text('Sep 17, 2021',style: TextStyle(fontSize: 14,color: Colors.black),)
                      ],
                    ),
                  ),

                  TextButton(onPressed: () {}, child: Text('Hide',style: TextStyle(color: Colors.blue),))

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 5,bottom: 10),
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
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(

                    color: Colors.grey, //                   <--- border color
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                      : 'assets/images/Radius box.png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Text('Sep 16, 2021',style: TextStyle(fontSize: 14,color: Colors.black),)
                      ],
                    ),
                  ),

                  TextButton(onPressed: () {}, child: Text('Hide',style: TextStyle(color: Colors.blue),))

                ],
              ),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(

                    color: Colors.grey, //                   <--- border color
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                      : 'assets/images/Radius box.png',
                                  fit: BoxFit.contain,
                                )),
                          ),
                        ),
                        Text('Sep 17, 2021',style: TextStyle(fontSize: 14,color: Colors.black),)
                      ],
                    ),
                  ),

                  TextButton(onPressed: () {}, child: Text('Hide',style: TextStyle(color: Colors.blue),))

                ],
              ),
            ),

          ],
        ),
      ),
        bottomNavigationBar: _ischeck == true ? Container(
          height: 100,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),

              buttonScanCompress(),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ):SizedBox(height: 1,)
    );

  }
  Widget buttonScanCompress() {
    return Container(
      width: 374,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(30)),
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
                                      context, NamedRoute.photoCompressScanImage,
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
            'SCAN',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
