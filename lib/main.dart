import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_change_app/pages/homepage.dart';
import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomePage(),
    );
    
  }
}
