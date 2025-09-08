import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class GetXPage extends StatefulWidget {
  const GetXPage({super.key});

  @override
  State<GetXPage> createState() => __GetXPageState();
}

class __GetXPageState extends State<GetXPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: () {
                Get.snackbar(
                  "แจ้งเตือน",
                  "คุณมีข้อความใหม่",
                  snackPosition: SnackPosition.TOP,
                );
              },
              child: Text('Snack Bar'),
            ),
            FilledButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "แจ้งเตือน",
                  middleText: "",
                  actions: [
                    FilledButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("close"),
                    ),
                  ],
                );
              },
              child: Text('Get Dialog'),
            ),
            FilledButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(ThemeData.light());
                } else {
                  Get.changeTheme(ThemeData.dark());
                }
              },
              child: Text('change theme'),
            ),
            FilledButton(onPressed: () {
              var gs = GetStorage();
              gs.write('fullname', 'jittralada w.');
            }, child: const Text('Write')),
            FilledButton(
              onPressed: () {
                var gs = GetStorage();
                String fullname = gs.read('fullname');
                Get.defaultDialog(title: fullname);
              },
              child: const Text('Read'),
            ),
          ],
        ),
      ),
    );
  }
}
