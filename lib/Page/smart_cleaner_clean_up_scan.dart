import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';

class CleanUp extends StatefulWidget {
  const CleanUp({Key? key}) : super(key: key);

  @override
  State<CleanUp> createState() => _CleanUpState();
}

class _CleanUpState extends State<CleanUp> {
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
            const SizedBox(
              height: 40,
            ),
          Image.asset('assets/images/Group 25380.png',width: 75,height: 75,fit: BoxFit.contain,),
          const Text('1,83 GB To Clean Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, NamedRoute.similarPhotoScan,arguments: null);
              },
              child: Container(
                width: 374,
                height: 60,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('91,4 MB',style: TextStyle(fontSize: 17,color: Colors.blue),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, NamedRoute.screenShotScan,arguments: null);
              },
              child: Container(
                width: 374,
                height: 60,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('1.453,8 MB',style: TextStyle(fontSize: 17,color: Colors.blue),),
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
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, NamedRoute.similarPhotoScan,arguments: null);
              },
              child: Container(
                width: 374,
                height: 60,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child:
                              Image.asset('assets/images/Group 25397.png')),
                        ),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text('29,6 MB',style: TextStyle(fontSize: 17,color: Colors.blue),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, NamedRoute.similarVideoScan,arguments: null);
              },
              child: Container(
                width: 374,
                height: 60,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('263,8 MB',style: TextStyle(fontSize: 17,color: Colors.blue),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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

              SizedBox(height: 70,),

              buttonScan()
          ],
        ),
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
              showDialog(context: context, builder: (context) => AlertDialog(
                title: Center(child: Text('Warning')),
                  content: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Text('38 photos, 13 videos, 0 contacts will be removed. You can recover the photos and videos from "Recently Deleted" album for 30 days. The contacts were back up on iCloud.', textAlign: TextAlign.center,)),
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

                                Navigator.pushNamed(context, NamedRoute.doneCleanUp,arguments: null);
                              }, child: Text('OK',style: TextStyle(color: Colors.blue,fontSize: 17))))
                        ],
                      ),
                    ),
                  ],
              ),);
            },
            child: const Text(
              'ClEAN UP',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
