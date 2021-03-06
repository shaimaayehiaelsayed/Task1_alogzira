import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/Button.dart';

import '../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(flex: 2,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 80,
                height: 40,
                child: TextButton(onPressed: null, child: Text("Skip")),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xB7D7F3D9)),
              ),
            ],
          ),
        ),
        const Spacer(flex: 3,),
        Text(
          "TRAVLING",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: Color(0xB752A067),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(300),
          width: getProportionateScreenWidth(double.infinity),
        ),
        const Spacer(flex: 2),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),

        ),
      ],
    );
  }
}
