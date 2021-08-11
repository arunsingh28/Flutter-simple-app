import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('License'),
          onPressed: () {
            showAboutDialog(
                context: context,
                applicationIcon: FlutterLogo(),
                applicationName: 'sample app',
                applicationLegalese: '\u{a9} 2014 The Flutter Authors',
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        style: TextStyle(color: Colors.black),
                        text:
                            "Flutter is Google's UI toolkit for building beautiful, "
                            'natively compiled applications for mobile, web, and desktop '
                            'from a single codebase. Learn more about Flutter at '),
                    TextSpan()
                  ]))
                ]);
          },
        ),
      ),
    );
  }
}

   // return Scaffold(
    //   body: AboutDialog(
    //     applicationIcon: Icon(Icons.info),
    //     applicationName: 'Simple app',
    //     applicationVersion: '1.2',
    //     applicationLegalese: 'View all Details',
    //     // children: [Text('View all Details')],
    //   ),