
import 'package:flutter/material.dart';
import 'package:task_1/splash/components/body.dart';

import '../../size_config.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body:Body(),
    );
  }
}
