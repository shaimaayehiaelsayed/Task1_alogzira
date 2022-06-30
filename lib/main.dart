import 'package:flutter/material.dart';
import 'package:task_1/Login.dart';
import 'package:task_1/splash/components/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
