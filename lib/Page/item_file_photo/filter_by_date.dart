import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Route/constan_route.dart';

class FilterByDate extends StatefulWidget {
  const FilterByDate({Key? key}) : super(key: key);

  @override
  State<FilterByDate> createState() => _FilterByDateState();
}

class _FilterByDateState extends State<FilterByDate> {
  bool _ischeck = false;
  DateTime dateTime = DateTime(2013, 2, 1, 10, 20);
  DateTime dateTime1 = DateTime(2013, 2, 1, 10, 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
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
          padding: EdgeInsets.only(left: 70),
          child: Text(
            "Filter By Date",
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
                  'Select all',
                  style: TextStyle(color: Colors.blue),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 375,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          children: [
                            CupertinoButton(
                              onPressed: () {
                                showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) => Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                      height: 300,
                                                      decoration:
                                                          const BoxDecoration(
                                                              color:
                                                                  Colors.white),
                                                      child:  Padding(
                                                        padding: EdgeInsets.all(10.0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets.only(
                                                                      bottom:
                                                                          238),
                                                              child: TextButton(
                                                                onPressed: (){
                                                                  Navigator.pop(context);
                                                                },
                                                                child: const Text(
                                                                  'Cancel',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .blue,decoration: TextDecoration.none,
                                                                      fontSize: 15),
                                                                ),
                                                              ),
                                                            ),
                                                            const Padding(
                                                              padding:
                                                                  EdgeInsets.only(
                                                                      bottom:
                                                                          238),
                                                              child: Text(
                                                                'Start Time',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,decoration: TextDecoration.none,
                                                                    fontSize: 15),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets.only(
                                                                      bottom:
                                                                          238),
                                                              child: TextButton(
                                                                onPressed: (){
                                                                  Navigator.pop(context);
                                                                },
                                                                child: const Text(
                                                                  'Done',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .blue,decoration: TextDecoration.none,
                                                                      fontSize: 15),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 50),
                                                  child: SizedBox(
                                                    height: 250,
                                                    child: CupertinoDatePicker(
                                                        backgroundColor:
                                                            Colors.white,
                                                        initialDateTime:
                                                            dateTime,
                                                        onDateTimeChanged:
                                                            (DateTime newTime) {
                                                          setState(() =>
                                                              dateTime =
                                                                  newTime);
                                                        },
                                                        use24hFormat: true,
                                                        mode:
                                                            CupertinoDatePickerMode
                                                                .date),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ));
                              },
                              child: Container(
                                width: 145,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                  '${dateTime.month} ${dateTime.day}, ${dateTime.year}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                            ),
                            Container(
                              width: 9,
                              height: 2,
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                            CupertinoButton(
                              onPressed: () {
                                showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) => Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              child: Container(
                                                  height: 300,
                                                  decoration:
                                                  const BoxDecoration(
                                                      color:
                                                      Colors.white),
                                                  child:  Padding(
                                                    padding: EdgeInsets.all(10.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.only(
                                                              bottom:
                                                              238),
                                                          child: TextButton(
                                                            onPressed: (){
                                                              Navigator.pop(context);
                                                            },
                                                            child: const Text(
                                                              'Cancel',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blue,decoration: TextDecoration.none,
                                                                  fontSize: 15),
                                                            ),
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                          EdgeInsets.only(
                                                              bottom:
                                                              238),
                                                          child: Text(
                                                            'Start Time',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,decoration: TextDecoration.none,
                                                                fontSize: 15),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              bottom:
                                                              238),
                                                          child: TextButton(
                                                            onPressed: (){
                                                              Navigator.pop(context);
                                                            },
                                                            child: const Text(
                                                              'Done',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blue,decoration: TextDecoration.none,
                                                                  fontSize: 15),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(
                                                  top: 50),
                                              child: SizedBox(
                                                height: 250,
                                                child: CupertinoDatePicker(
                                                    backgroundColor:
                                                    Colors.white,
                                                    initialDateTime:
                                                    dateTime1,
                                                    onDateTimeChanged:
                                                        (DateTime newTime) {
                                                      setState(() =>
                                                      dateTime1 =
                                                          newTime);
                                                    },
                                                    use24hFormat: true,
                                                    mode:
                                                    CupertinoDatePickerMode
                                                        .date),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ));
                              },
                              child: Container(
                                width: 145,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                      '${dateTime1.month} ${dateTime1.day}, ${dateTime1.year}',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset(
                                    'assets/images/NoPath Copy.png',
                                    width: 121,
                                    height: 121,
                                    fit: BoxFit.fill),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset(
                                    'assets/images/NoPath Copy.png',
                                    width: 121,
                                    height: 121,
                                    fit: BoxFit.fill),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset(
                                    'assets/images/NoPath Copy.png',
                                    width: 121,
                                    height: 121,
                                    fit: BoxFit.fill),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset(
                                    'assets/images/NoPath Copy.png',
                                    width: 121,
                                    height: 121,
                                    fit: BoxFit.fill),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Image.asset(
                                    'assets/images/NoPath Copy.png',
                                    width: 121,
                                    height: 121,
                                    fit: BoxFit.fill),
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

              ],
            ),
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
                                      context, NamedRoute.deleteImage,
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
}
