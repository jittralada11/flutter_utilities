import 'package:flutter/material.dart';
import 'package:flutter_utilities/pages/getx.dart';
import 'package:flutter_utilities/pages/main_drawer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainDrawerPage()),
                );
              },
              child: Text('Demo Drawer'),
            ),
            FilledButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              child: Text('Demo Toast'),
            ),
            FilledButton(
              onPressed: () {
                Get.to(() => GetXPage());
              },
              child: Text('Demo GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
