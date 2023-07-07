import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';


class DeleteIamge extends StatefulWidget {
  const DeleteIamge({Key? key}) : super(key: key);

  @override
  State<DeleteIamge> createState() => _DeleteIamgeState();
}

class _DeleteIamgeState extends State<DeleteIamge> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, NamedRoute.organisePage,arguments: null);
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
            "Delete Images",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, NamedRoute.allPhoto,arguments: null);
              },
              child: Container(
                width: 374,
                height: 60,
                decoration:  BoxDecoration(color: Colors.white
                ,borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child:
                              Image.asset('assets/images/Group 25391.png')),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'All Photos',
                            style: TextStyle(color: Colors.black,
                              fontSize: 17,
                            ),
                          ),

                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 120),
                          child: Text(
                            ' 3326',
                            style: TextStyle(color: Colors.black,
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
          TextButton(
            onPressed: (){
              Navigator.pushNamed(context, NamedRoute.filterByDate,arguments: null);
            },
            child: Container(
              width: 375,
              height: 60,
              decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 40,
                            height: 40,
                            child:
                            Image.asset('assets/images/Group 25392.png')),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          ' Filter By Date',
                          style: TextStyle(
                            fontSize: 17,color: Colors.black
                          ),
                        ),
                      ),
                    ],
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, NamedRoute.locations,arguments: null);
                      },

              child: Container(
                width: 374,
                height: 60,
                decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child:
                                Image.asset('assets/images/Group 25393.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Filter By Locations',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
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
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, NamedRoute.similarPhotoScan,arguments: null);
              },

              child: Container(
                width: 374,
                height: 60,
                decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child:
                                Image.asset('assets/images/Group 25394.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Similar Photo',
                              style: TextStyle(
                                fontSize: 17,color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Text(
                        ' 347',
                        style: TextStyle(
                          fontSize: 17,color: Colors.black,
                        ),
                      ),

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
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, NamedRoute.screenShotScan,arguments: null);
              },

              child: Container(
                width: 374,
                height: 60,
                decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child:
                                Image.asset('assets/images/Group 25395.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Screenshots',
                              style: TextStyle(
                                fontSize: 17,color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Text(
                        ' 514',
                        style: TextStyle(
                          fontSize: 17,color: Colors.black
                        ),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              'assets/images/Path8896.png',
                              fit: BoxFit.contain,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, NamedRoute.photoBrust,arguments: null);
              },
              child: Container(
                width: 374,
                height: 60,
                decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child:
                                Image.asset('assets/images/Group 25396.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Photo Burst',
                              style: TextStyle(
                                fontSize: 17,color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Text(
                        ' 3',
                        style: TextStyle(
                          fontSize: 17,color: Colors.black
                        ),
                      ),

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
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, NamedRoute.livePhotoScan,arguments: null);
              },
              child: Container(
                width: 374,
                height: 60,
                decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
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
                                fontSize: 17,color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Text(
                        ' 83',
                        style: TextStyle(
                          fontSize: 17,color: Colors.black
                        ),
                      ),

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
    );
  }

}
