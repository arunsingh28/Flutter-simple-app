import 'package:auth_ui/Screen/Login/background.dart';
import 'package:auth_ui/Screen/Signup/Signup_screen.dart';
import 'package:auth_ui/Screen/Welcome/welcome_screen.dart';
import 'package:auth_ui/components/rounded_btn.dart';
import 'package:auth_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // SizedBox(
              //   height: size.height * .3,
              // ),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * .45,
              ),
              RoundedInput(
                hintText: "Your Email",
                icon: Icons.person,
                scure: false,
                onChanged: (value) {},
              ),
              RoundedInput(
                scure: true,
                hintText: "Your Password",
                icon: Icons.lock,
                onChanged: (value) {},
              ),
              RoundedButton(
                title: "LOGIN",
                textColor: Colors.white,
                color: PrimaryColor,
                press: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account ? ",
                    style: TextStyle(color: PrimaryColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: PrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
