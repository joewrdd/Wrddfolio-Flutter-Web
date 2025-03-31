import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wrddfolio_flutter/main/ui/home.dart';
import 'package:wrddfolio_flutter/utils/func/web_scroll.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WrddX Portfolio',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MainScreen(),
    );
  }
}
