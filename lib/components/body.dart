import 'package:auth_ui/components/background.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Simple App", style: TextStyle(fontWeight: FontWeight.bold)),
          SvgPicture.asset("assets/icons/chat.svg")
        ],
      ),
    );
  }
}
