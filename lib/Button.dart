import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press, this.Border, this.backgroundColor,this.color, this.icon
  }) : super(key: key);
  final String? text;
  final Function? press;
  final BorderRadius? Border;
   final Color? backgroundColor;
   final Color? color;
   final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:  45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: Border,
        color: backgroundColor!,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurStyle :BlurStyle.outer,
          )
        ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           icon??Container(),
          TextButton(
            style: TextButton.styleFrom(
              //shape: Border,//RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              primary: Colors.white,
            ),
            onPressed: press as void Function()?,
            child: Text(
              text!,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: color!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
