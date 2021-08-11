import 'dart:convert';

import 'package:auth_ui/Screen/Welcome/body.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API extends StatefulWidget {
  const API({Key key}) : super(key: key);

  @override
  _APIState createState() => _APIState();
}

class User {
  final String name, email, username;

  User(this.name, this.email, this.username);
}

class _APIState extends State<API> {
  getUserDate() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u['name'], u['email'], u['username']);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users API'),
        ),
        body: Container(
          child: Card(
            child: FutureBuilder(
              future: getUserDate(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Text("loding..");
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data[index].name),
                          subtitle: Text(snapshot.data[index].username),
                          trailing: Text(snapshot.data[index].email),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        );
                      });
                }
              },
            ),
          ),
        ));
  }
}
