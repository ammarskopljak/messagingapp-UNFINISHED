import 'package:flutter/material.dart';
import 'package:messaging_app/widget/widget.dart';
import 'chatView.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController usernameTextEditingController = new TextEditingController();

  final formKey = GlobalKey<FormState>();

  signMeUp(){

    if (formKey.currentState!.validate()){
      
    }
    
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => ChatView()));
  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Messaging App')),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "provide valid username";
                          }
                          return null;
                        },
                        controller: usernameTextEditingController,
                        decoration: InputDecoration(
                          hintText: 'username',
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 12,),
                GestureDetector(
                  onTap: () {

                    signMeUp();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                    ),
                    child: Text("SignUp", style: buttonTextStyle(),),
                  ),
                )
              ],
            )
        )
    );
  }
}


