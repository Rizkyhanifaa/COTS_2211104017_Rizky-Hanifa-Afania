import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/onboarding/onboarding1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek Onboarding',
      home: Onboarding1(),
    );
  }
}
