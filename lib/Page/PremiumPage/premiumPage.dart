import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../purchase_page/purchase_v2_page.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade600,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: SizedBox(
              height: 34,
              width: 34,
              child: Image.asset(
                'assets/images/Group25378.png',
                height: 34,
                width: 34,
                fit: BoxFit.contain,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                  width: 242,
                  height: 62,
                  child: Image.asset(
                    'assets/images/Group25379.png',
                    fit: BoxFit.contain,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Container(
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/Shape1723.png",
                            width: 12,
                            height: 12,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          'Delete duplicate images and videos',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/Shape1723.png",
                            width: 12,
                            height: 12,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text('Merge duplicate contacts',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/Shape1723.png",
                            width: 12,
                            height: 12,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text('Compress images and videos',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/Shape1723.png",
                            width: 12,
                            height: 12,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text('No Ads',
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                      ],
                    )),
                  ],
                ),
              ),
            ),
            Text('3 DAY FREE TRIAL',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white38,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 374,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'WEEKLY',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white38),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text("3",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white38)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 374,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'MONTHLY',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text("9",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 374,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'YEARLY',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white38),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text("49",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white38)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 374,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PurchaseV2Page()));
                    },
                    child: Text('SUBSCRIBE',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent)))),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
                width: 374,
                child: Center(
                    child: Text(
                  ' Subscriptions will be charged to your credit card through your iTunes account. Your subscription will automatically renew unless cancelled at least 24 hours before the end of your current subscription, and you can cancel a subscription during the active period. You can manage your subscription at any time, either by viewing your account in iTunes from your Mac or PC, or Account Settings on your device after purchase. For more information, please see our Terms of Use and Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ))),
            SizedBox(
              height: 20,
            ),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Restore ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    'Term Of Services',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
