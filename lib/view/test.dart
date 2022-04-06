import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("text"),
      ),
      body: TextButton(
        onPressed: () {
          
            Get.isDarkMode
                ? Get.changeTheme(ThemeData.dark())
                : Get.changeTheme(ThemeData.light());
          },
          child:const Text('change theme')
          ),
    );
  }
}
