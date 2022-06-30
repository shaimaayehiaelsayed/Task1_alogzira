import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Button.dart';
import 'Login.dart';
import 'TextFeild.dart';

class signUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
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
                      'Register',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(
                      key: key,
                      flex: 3,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            "Help",
                            style: TextStyle(color:Color(0xB752A067)),
                          ),
                          Icon(
                            Icons.help,
                            color: Color(0xB752A067),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Text("Email"),
                Container(
                 // padding: const EdgeInsets.only(left: 8),
                  margin: const EdgeInsets.only(top: 8),
                  height: 48,
                  width: double.infinity,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: const [
                      Expanded(
                          child: InputField(
                            desc: "Eg:example@gmail.com",
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Text("Phone Number"),
                Container(
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
                          child: InputField(
                            desc: "Eg:5267828929",
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Text("Password"),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  margin: const EdgeInsets.only(top: 8),
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: const [
                      Expanded(
                          child: InputField(
                            desc: "Password",
                            suffix: Icons.remove_red_eye,
                          )
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                DefaultButton(
                  text: 'Register',
                  press: () {},
                  backgroundColor:Color(0xB752A067),
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
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
                  color: Color(0xB752A067),
                  // imageIcon:  const Icon(MdiIcons.google),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Has any account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) =>
                            signUp()));
                      },
                      child: const Text(
                        "sign to here",
                        style: TextStyle(color:Color(0xB752A067)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'Be regestering your account .you are agree to our',
                    style: TextStyle(color: Colors.black26),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Login()));
                    },
                    child: const Text(
                      "Terms and conditions",
                      style: TextStyle(color: Color(0xB752A067)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}