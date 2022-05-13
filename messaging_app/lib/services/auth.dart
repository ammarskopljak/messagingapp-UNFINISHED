import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFirebaseUser(User user){

    return user;
  }

  Future signInWithUsername(String username,) async {

    try{
      UserCredential result = await _auth.signInWithCustomToken(username);
      User? user = result.user;
    } catch(e) {
      print(e.toString());
    }

  }

  Future signUpWithUsername(String username,) async {

    try{
      UserCredential result = await _auth.signInWithCustomToken(username);
      User? user = result.user;
      return _userFirebaseUser(user!);
    } catch(e) {
      print(e.toString());
    }
  }
}