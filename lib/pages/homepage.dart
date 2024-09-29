import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_change_app/controller/theme_controller.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {

  ThemeController themeController = Get.put(ThemeController());
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Theme change"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            themeController.changeMyTheme();
          }, icon: const Icon(Icons.dark_mode_outlined)),
          const SizedBox(width: 30,),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:const Center(child: const Text("Text 1")),
                  ),
                ),
              const  SizedBox(width: 10,),
                 Expanded(
                   child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:const Center(child: const Text("Text 1")),
                                   ),
                 ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child:const Center(child: Text("Text 1")),
                  ),
                ),
              const  SizedBox(width: 10,),
                 Expanded(
                   child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child:const Center(child: const Text("Text 1")),
                                   ),
                 ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}