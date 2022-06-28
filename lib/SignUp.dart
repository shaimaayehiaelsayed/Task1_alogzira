import 'package:flutter/material.dart';

import 'Button.dart';
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
                    Spacer(key: key,flex: 3,),
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
                const InputField(desc: 'eg:example@gmail.com', title: 'Email ',),
                const InputField(desc: 'eg:456788889', title: 'Phone Number ',),
                const InputField(desc: 'Password', title: 'Password ',suffix: Icons.remove_red_eye,
                  isPassword: true,),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  text: 'Register',
                  click: () {},
                  background: Colors.blue,
                  textColor: Colors.white,
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
                MyButton(
                  //  imageIcon:  Image(image:const AssetImage("assets/images/google.png") ),
                  text: 'Sign with Google',
                  click: () {},
                  background: Colors.white,
                  textColor: Colors.blue,
                  // imageIcon:  const Icon(MdiIcons.google),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Doesn't has any account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => signUp()));
                      },
                      child: const Text(
                        "Register here",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
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
