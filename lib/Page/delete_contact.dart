import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Route/constan_route.dart';

class DeleteContact extends StatefulWidget {
  const DeleteContact({Key? key}) : super(key: key);

  @override
  State<DeleteContact> createState() => _DeleteContactState();
}

class _DeleteContactState extends State<DeleteContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Delete Contacts",
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
                Navigator.pushNamed(context, NamedRoute.allContact,arguments: null);
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
                              Image.asset('assets/images/Group 25398.png')),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'All Contacts',
                            style: TextStyle(color: Colors.black,
                              fontSize: 17,
                            ),
                          ),

                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 120),
                          child: Text(
                            ' 224',
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
              Navigator.pushNamed(context, NamedRoute.duplicateName,arguments: null);
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
                            Image.asset('assets/images/Group 25399.png')),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Duplicate Names',
                          style: TextStyle(
                              fontSize: 17,color: Colors.black
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Text(
                          ' 7',
                          style: TextStyle(color: Colors.black,
                            fontSize: 17,
                          ),
                        ),

                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
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
            onPressed: (){
              Navigator.pushNamed(context, NamedRoute.duplicatePhones,arguments: null);
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
                              Image.asset('assets/images/Group 25400.png')),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Duplicate Phones',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 90),
                          child: Text(
                            ' 7',
                            style: TextStyle(color: Colors.black,
                              fontSize: 17,
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
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
            onPressed: (){
              Navigator.pushNamed(context, NamedRoute.duplicateEmail,arguments: null);
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
                              Image.asset('assets/images/Group 25401.png')),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Duplicate Email',
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
                      ' 4',
                      style: TextStyle(
                        fontSize: 17,color: Colors.black,
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
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
            onPressed: (){
              Navigator.pushNamed(context, NamedRoute.noName,arguments: null);
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
                              Image.asset('assets/images/Group 25402.png')),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'No Names',
                            style: TextStyle(
                                fontSize: 17,color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: Text(
                      ' 3',
                      style: TextStyle(
                          fontSize: 17,color: Colors.black
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
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
            onPressed: (){
              Navigator.pushNamed(context, NamedRoute.noPhone,arguments: null);
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
                              Image.asset('assets/images/Group 25403.png')),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'No Phones',
                            style: TextStyle(
                                fontSize: 17,color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 120),
                    child: Text(
                      ' 4',
                      style: TextStyle(
                          fontSize: 17,color: Colors.black
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
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
                Navigator.pushNamed(context, NamedRoute.noEmailnoPhone,arguments: null);
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
                                Image.asset('assets/images/Group 25404.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'No Email & Phones',
                              style: TextStyle(
                                  fontSize: 17,color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text(
                        ' 2',
                        style: TextStyle(
                            fontSize: 17,color: Colors.black
                        ),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
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
