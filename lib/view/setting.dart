
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'package:whatsapp/view/theme_changer.dart';

class SettingView extends StatelessWidget {
  const SettingView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title:const Text("Setting"),
      ),
      body:  Column(
        children: [
          ElevatedButton(onPressed: (){
           Get.isDarkMode ? Get.changeTheme(ThemeData.dark()): Get.changeTheme(ThemeData.light());
          },
           child: const Text("Change Theme"))
          // RadioListTile<ThemeMode>(
          //   title: const Text("Light Mode"),
          //   value: ThemeMode.light,
          //    groupValue: themeChanger.themeMode, 
          //    onChanged: themeChanger.setTheme,),
          //      RadioListTile<ThemeMode>(
          //   title: const Text("Dark Mode"),
          //   value: ThemeMode.dark,
          //    groupValue: themeChanger.themeMode, 
          //    onChanged: themeChanger.setTheme,),
               
        ],
      ),
    );
  }
}