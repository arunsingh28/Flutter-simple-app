import 'package:flutter/material.dart';
import '../../constant.dart';
import 'TextFieldContainer.dart';

class RoundedInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool scure;
  const RoundedInput({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.scure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: scure,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              icon,
              color: PrimaryColor,
            ),
            suffixIcon: scure
                ? Icon(
                    Icons.visibility,
                    color: PrimaryColor,
                  )
                : null,
            border: InputBorder.none),
      ),
    );
  }
}
