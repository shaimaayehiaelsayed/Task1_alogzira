

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {Key? key,
      required this.desc,
      this.controller,
      this.suffix,
      })
      : super(key: key);
  final String desc;
  final TextEditingController? controller;
  final IconData? suffix;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return TextFormField(
          controller: controller,
          autofocus: false,
          decoration: InputDecoration(
            hintText: desc,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: Colors.black26,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0),
            ),
            focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            suffixIcon: suffix != null
                ? Icon(
                    suffix,
                  )
                : null,
          ),
        );
      }
    );
  }
}
