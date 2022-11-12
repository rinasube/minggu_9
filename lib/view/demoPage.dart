import 'dart:html';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:tugas_minggu_9/controller/demoController.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();
  //getting the cart controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Get.arguments),
            ),
            SwitchListTile(
              value: ctrl.isDark,
              title: Text("Touch to change Thememode"),
              onChanged: ctrl.changeTheme,
            ),
            ElevatedButton(
                onPressed: () => Get.snackbar(
                    "Snackbar", "Hello this is the Snackbar message",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.white,
                    backgroundColor: Colors.black87),
                child: Text('Snackbar Bar')),
            ElevatedButton(
                onPressed: () => Get.defaultDialog(
                    title: "Dialogue",
                    content: Text(
                      'Hey, From Dialogue',
                    )),
                child: Text('Dialogue')),
            ElevatedButton(
                onPressed: () => Get.bottomSheet(Container(
                      height: 150,
                      color: Colors.white,
                      child: Text(
                        'Hello From Bottom Sheet',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    )),
                child: Text('Bottom Sheet')),
            ElevatedButton(
                onPressed: () => Get.offNamed('/'),
                child: Text('Back To Home')),
          ],
        ),
      ),
    );
  }
}
