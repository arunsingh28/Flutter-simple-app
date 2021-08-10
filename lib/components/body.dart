import 'package:auth_ui/components/background.dart';
import 'package:auth_ui/components/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Simple App", style: TextStyle(fontWeight: FontWeight.bold)),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * .45,
          ),
          RoundedButton(
            title: "LOGIN",
            press: () {},
          ),
          RoundedButton(
            title: "SIGN UP",
            press: () {},
          ),
        ],
      ),
    );
  }
}
