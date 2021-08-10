import 'package:auth_ui/Screen/Login/background.dart';
import 'package:auth_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Rounded_input.dart';

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
                onChanged: (value) {},
              ),
              RoundedInput(
                hintText: "Your Password",
                icon: Icons.lock,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
