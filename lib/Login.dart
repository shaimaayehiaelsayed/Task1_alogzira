import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_1/SignUp.dart';
import 'Button.dart';
import 'TextFeild.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              "assets/images/login.png",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome To Fashion Daily',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(key: key, flex: 3,),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            "Help",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Icon(
                            Icons.help,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    )
                  ],
                ),


                Text("Phone Number"),
                Container(
                  // padding: const EdgeInsets.only(left: 2),
                  margin: const EdgeInsets.only(top: 8),
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      CountryCodePicker(
                        onChanged: print,
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: 'IT',
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        favorite: ['+39', 'FR'],
                        // showFlagDialog: false,
                        showFlag: false,
                        // alignLeft: true,
                        showDropDownButton: true,
                      ),
                      const Expanded(
                          child: InputField(desc: "eg:5267828929",)
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultButton(
                  text: 'Sign in',
                  press: () {},
                  backgroundColor: Colors.blue,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Colors.black26,
                    ),
                  ),
                ),
                DefaultButton(

                  icon: Container(
                    child: SvgPicture.asset('assets/icons/google-icon.svg'),),
                  text: 'Sign with Google',
                  press: () {},
                  backgroundColor: Colors.white,
                  color: Colors.blue,
                  // imageIcon:  const Icon(MdiIcons.google),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Doesn't has any account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Login()));
                      },
                      child: const Text(
                        "Register here",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
                //SvgPicture.asset('assets/icons/google-icon.svg'),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    'use the application according to policy rules.Any\n kinds of violations will be subject sanctions',
                    style: TextStyle(color: Colors.black26),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}