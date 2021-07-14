import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @observable
  bool ver = false;

  @observable
  var idToken;

  @observable
  var accessToken;

  @observable
  var user;
  @observable
  var user2;

  @observable
  var userMail;

  @observable
  var userPhoto;

  @observable
  var userName;

  @action
  void setvisible() {
    ver = !ver;
  }

  @action
  Future<void> signInWithGoogle() async {
    UserCredential userCredential;

    if (kIsWeb) {
      var googleProvider = GoogleAuthProvider();
      userCredential = await _auth.signInWithPopup(googleProvider);
    } else {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      userCredential = await _auth.signInWithCredential(googleAuthCredential);
      accessToken = googleAuthCredential.accessToken;
      idToken = googleAuthCredential.idToken;
    }

    this.user = userCredential.user;
    if (this.user == null) return;

    Modular.to.pushReplacementNamed('/home');
  }

  @action
  Future<void> logout() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signOut();
    if (googleUser == null) {
      Modular.to.pushReplacementNamed('/');
    }
  }
}



  // Future googleLogin() async {
  //   final googleSignIn = GoogleSignIn();
  //   final googleUser = await googleSignIn.signIn();
  //   final auth = FirebaseAuth.instance;

  //   if (googleUser == null) return;
  //   user = googleUser;

  //   final googleAuth = await googleUser.authentication;

  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );

  //   accessToken = credential.accessToken;
  //   idToken = credential.idToken;
  //   await FirebaseAuth.instance.signInWithCredential(credential);

  //   Modular.to.pushReplacementNamed('/home');
  // }
