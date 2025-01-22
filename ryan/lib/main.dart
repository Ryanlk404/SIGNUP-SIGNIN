import 'package:flutter/material.dart';
import 'package:ryan/pages/signup.dart';
import 'package:ryan/pages/signin.dart';
// ignore: unused_import
import 'package:ryan/pages/actionsheet50.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => const Signup(),
        '/signin': (context) => const SignIn(),
      },
    );
  }
}
