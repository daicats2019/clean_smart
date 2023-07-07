import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Route/constan_route.dart';

class VideoCompresPreview extends StatefulWidget {
  const VideoCompresPreview({Key? key}) : super(key: key);

  @override
  State<VideoCompresPreview> createState() => _VideoCompresPreviewState();
}

class _VideoCompresPreviewState extends State<VideoCompresPreview> {

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 10),
              child: Text('113 Videos can be compressed'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, NamedRoute.videoCompressResult,
                      arguments: null);
                },
                child: Container(
                  width: 374,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: SizedBox(
                                  width: 75,
                                  height: 75,
                                  child:  Stack(children: [
                                    Image.asset('assets/images/NoPath Copy2.png',
                                        width: 92, height: 93, fit: BoxFit.fill),

                                    Positioned(
                                      bottom: 5,
                                      right: 5,
                                      child: Container(
                                        width: 37,
                                        height: 17,
                                        decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.3)
                                        ),
                                        child: Center(child: Text('00:25',style: TextStyle(fontSize: 10,color: Colors.white),)),
                                      ),
                                    )
                                  ]),
                              ),
                            ),
                             const Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text(
                                   'Saved: 1.349,67 MB',
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 17,
                                       fontWeight: FontWeight.normal),
                                 ),
                                 SizedBox(height: 5,),
                                 Text(
                                   'Original size: 3.856,2 MB',
                                   style: TextStyle(
                                     color: Colors.grey,
                                     fontSize: 12,
                                   ),
                                 ),
                               ],
                             ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SizedBox(
                              width: 14,
                              height: 14,
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
            ),

          ],
        ),
      ),
    );
  }
}
