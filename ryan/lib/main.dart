import 'package:flutter/material.dart';
import 'package:ryan/pages/onboarding.dart'; // Update the path to your onboarding file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Onboarding(),
    );
  }
}
