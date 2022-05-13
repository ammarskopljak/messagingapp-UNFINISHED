import 'package:flutter/material.dart';
import 'package:messaging_app/widget/widget.dart';
import 'package:messaging_app/services/auth.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {

  AuthMethods authMethods = new AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AutofillHints.username),
      actions: [
        GestureDetector(
          onTap: () {
            

        },
         child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.exit_to_app)),
    ),
        ],
      ),
    );
  }
}

