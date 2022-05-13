import 'package:flutter/material.dart';
import 'package:messaging_app/widget/widget.dart';
import 'dart:math';

String getRandom(int length){
  const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random r = Random();
  return String.fromCharCodes(Iterable.generate(
      length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messaging App')),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'username',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                ),
              ),
            ),

            SizedBox(height: 12,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Text("Login", style: buttonTextStyle(),),
            )
          ],
        )
      )
    );
  }
}