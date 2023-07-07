import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Route/constan_route.dart';

class VideoCompresResult extends StatefulWidget {
  const VideoCompresResult({Key? key}) : super(key: key);

  @override
  State<VideoCompresResult> createState() => _VideoCompresResultState();
}

const List<String> list = <String>['1080p (Full HD)', '720p (HD)', '480p', '360p', '240p'];

class _VideoCompresResultState extends State<VideoCompresResult> {
  String dropdownValue = list.first;

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
          padding: EdgeInsets.only(left: 50),
          child: Text(
            "Video Compress",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 5),
                  child: Center(child: Text('Compress Result')),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Preview 10 sec',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: SizedBox(
                            width: 177,
                            height: 177,
                            child: Stack(children: [
                              Image.asset('assets/images/NoPath Copy2.png',
                                  width: 177, height: 177, fit: BoxFit.fill),
                              Positioned(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.3)),
                                    child: Center(
                                      child: Image.asset(
                                          'assets/images/Path 33537.png',
                                          width: 25,
                                          height: 20,
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: Container(
                                  width: 37,
                                  height: 17,
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3)),
                                  child: Center(
                                      child: Text(
                                    '00:25',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )),
                                ),
                              )
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Original size')
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 177,
                          height: 177,
                          child: Stack(children: [
                            Image.asset('assets/images/NoPath Copy2.png',
                                width: 177, height: 177, fit: BoxFit.fill),
                            Positioned(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3)),
                                  child: Center(
                                    child: Image.asset(
                                        'assets/images/Path 33537.png',
                                        width: 25,
                                        height: 20,
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Container(
                                width: 37,
                                height: 17,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.3)),
                                child: Center(
                                    child: Text(
                                  '00:25',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                )),
                              ),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Compressed size')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Compression Ratio:'),
                  Container(
                    width: 132,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton(
                          value: dropdownValue,
                          icon:  const Padding(
                            padding: EdgeInsets.only(left: 0.0),
                            child: Icon(IconData(0xf13d, fontFamily: 'MaterialIcons')),
                          ),
                          elevation: 0,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(
                            height: 0,
                            color: Colors.white,
                          ),
                          items: list
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, top: 40),
              child: RichText(
                text: TextSpan(
                  text: 'Videos can be compressed: ',style: TextStyle(color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(text: '154.61 Mb', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 15)),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 180,
            ),
            buttonScanDone(),
          ],
        ),
      ),
    );
  }
  Widget buttonScanDone() {
    return Center(
      child: Container(
        width: 374,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, NamedRoute.videoCompressResultScan,
                  arguments: null);
            },
            child: Text(
              'Ready to Compress',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 19),
            )),
      ),
    );
  }
}
