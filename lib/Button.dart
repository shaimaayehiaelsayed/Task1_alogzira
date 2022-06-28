import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class MyButton extends StatelessWidget{
 final String text ;
  final VoidCallback click;
  final Color textColor;
  final Color background;
  //final Icon? imageIcon;
 MyButton({
    Key? key,
    required this.text,
    required this.click,
     required this.background,
    required this.textColor,
  //  this.imageIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      onPressed: click,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         // imageIcon!,
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: textColor
            ),
          ),
        ],
      ),
      color:background,
    );
  }}
  