import 'package:flutter/material.dart';
import 'package:flutter_olx/utils/constants/color_constants.dart';
import 'package:flutter_olx/utils/constants/image_constants.dart';
import 'package:flutter_olx/view/name_screen/name_screen.dart';
import 'package:flutter_olx/view/number_login/number_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: ColorConstants.green,
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 30)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageConstants.olx_login_big,
                height: 200,
                width: 200,
              ),
              Text(
                "INDIA",
                style: TextStyle(
                    color: ColorConstants.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 31),
              )
            ],
          ),
          SizedBox(height: 70),
          Expanded(
            child: Container(
              width: double.infinity,
              color: ColorConstants.green,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NumberLogin()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 330,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.phone_android_sharp,
                                color: ColorConstants.green,
                              ),
                            ),
                            SizedBox(width: 25),
                            Text(
                              "Continue with phone",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NameScreen()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 330,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.g_mobiledata_rounded,
                                color: ColorConstants.green,
                                size: 35,
                              ),
                            ),
                            SizedBox(width: 13),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "OR",
                      style: TextStyle(
                          color: Colors.white.withOpacity(.75),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Login with Email",
                          style: TextStyle(
                              decorationThickness: 2,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "if you continue, you are accepting",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "OLX Terms and conditions and privacy policy",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              decorationThickness: 2,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
