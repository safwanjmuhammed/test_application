import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:test_application/home.dart';
import 'package:test_application/ui_test/expanded_flex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: FlexTest());
  }
}
