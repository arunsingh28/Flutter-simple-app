import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Function press;
  final Color color, textColor;
  const RoundedButton(
      {Key key, this.title, this.press, this.color, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * .8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: color,
            onPressed: press,
            child: Text(
              title,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
