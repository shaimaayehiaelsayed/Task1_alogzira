import 'package:flutter/material.dart';
import 'package:task_1/Login.dart';
// This is the best practice
import '../../Button.dart';
import '../../signUp.dart';
import '../../size_config.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
   Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final kAnimationDuration = const Duration(milliseconds: 200);
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {

      "image": "assets/images/splash_1.png",
      "text": "Welcome to Tokoto, Let’s shop!"
    },
    {

      "image": "assets/images/splash_2.png",
      "text": "We help people conect with store \naround United State of America"
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "We show the easy way to shop. \nJust stay at home with us"

    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],

                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    //Spacer(flex: 2),
                    SizedBox(height: 40,),
                    DefaultButton(
                      text: "Continue",
                        press: () {  Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Login()));
                                            },
                      Border: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.blue,
                      color: Colors.white,
                    ),
                    SizedBox(height: 20,),
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
                            "Sign Up",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
