import 'package:flutter/material.dart';

import '../../Component/settingitem.dart';
import '../../data/data_item.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
 final List<SettingApp> _list = [
    SettingApp('Contact us', 'assets/images/ContactUs.png',
        'assets/images/Path8896.png'),
    SettingApp( "Rate App", 'assets/images/RateApp.png',
        'assets/images/Path8896.png'),
    SettingApp('Share App', 'assets/images/ShareApp.png',
        'assets/images/Path8896.png'),
    SettingApp('Privacy Policy',  'assets/images/PrivacyPolicy.png',
        'assets/images/Path8896.png'),
    SettingApp("Terms & Conditions", 'assets/images/Terms&Conditions.png',
        'assets/images/Path8896.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              'assets/images/Group25390.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Text(
            "Setting",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                 itemBuilder: ( context,  index) => settingItem(context, _list[index]),
                separatorBuilder: ( context,  index)=>const SizedBox(
                  height: 10,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


}

