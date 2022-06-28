/***import 'package:flutter/material.dart';

class defaultTextField extends StatelessWidget {
  final TextInputType type;
  final Function validate;
   final String? label;
   final IconData? suffix;
     final bool isPassword;
  final String hintText;
   defaultTextField({
    Key? key,
      required this.type,required this.validate, this.suffix, this.label, this.isPassword=false, required this.hintText,
  }): super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      validator: validate(),
      obscureText: isPassword,

      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        suffixIcon:suffix !=null? Icon(
          suffix,

        ):null,
        labelStyle: TextStyle(
          color: Colors.indigo,
        ),
      ),
    );
  }}
**/

import 'package:flutter/material.dart';



class InputField extends StatelessWidget {
  const InputField({Key? key, required this.title,required this.desc, this.controller,  this.suffix,this.isPassword=false}) : super(key: key);
  final String title;
  final String desc;
  final TextEditingController? controller;
 // final Widget? widget;
  final IconData? suffix;
  final  bool isPassword;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        margin: const EdgeInsets.only(top: 6),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(

            ),),
            Container(
              padding: const EdgeInsets.only(left: 8),
              margin: const EdgeInsets.only(top: 8),
              height: 45,
              width: double.infinity,
              decoration:  BoxDecoration(
                  border: Border.all(
                      color: Colors.grey
                  )
              ),
              child:Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: controller,
                      autofocus: false,

                      //readOnly: widget !=null?true:false,
                      decoration: InputDecoration(
                        hintText: desc,
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black26,
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0
                          ),
                        ),
                        focusedErrorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        suffixIcon:suffix !=null? Icon(
                          suffix,
                        ):null,
                      ),

                    ),
                  ),

                ],
              ),),
          ],
        ),
      ),
    );
  }
}

