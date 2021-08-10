import 'package:auth_ui/Screen/Login/background.dart';
import 'package:auth_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      icon: Icon(
                        Icons.person,
                        color: PrimaryColor,
                      ),
                      border: InputBorder.none),
                ),
              ),
              TextFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Your Password",
                      icon: Icon(
                        Icons.lock,
                        color: PrimaryColor,
                      ),
                      border: InputBorder.none),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * .8,
      decoration: BoxDecoration(
          color: PrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
