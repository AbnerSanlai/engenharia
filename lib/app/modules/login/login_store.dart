import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:engesoft/app/model/UserModel.dart';
import 'package:engesoft/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @observable
  ObservableList<UserModel> userModel = <UserModel>[].asObservable();

  @observable
  bool ver = false;

  @action
  void setvisible() {
    ver = !ver;
  }

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController senhaController = TextEditingController();

  @observable
  var idToken;

  @observable
  var accessToken;

  @observable
  var user;

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

  @action
  Future<void> loginGoogle() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };
    var response = await http.get(
      Uri.parse(BASE_URL_LOGIN_GOOGLE),
      headers: headers,
    );
    print(response.isRedirect);
  }

  Future<void> login() async {
    http.Response response = await http.post(Uri.parse(BASE_URL_AUTH), body: {
      "identifier": 'reader@strapi.io',
      "password": 'strapi',
    });

    print(response.body);
  }
  //const { data } = await axios.post('http://localhost:1337/auth/local', );

  Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        webOnlyWindowName: "random",
        enableDomStorage: false,
        enableJavaScript: true,
        forceSafariVC: false,
        forceWebView: false,
        // headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @action
  Future<void> register(username, email, provider, password, resetPasswordToken,
      confirmationToken) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    var response = await http.post(Uri.parse(BASE_URL_REGISTER),
        body: jsonEncode({
          "username": username,
          "email": email,
          "provider": provider,
          "password": password,
          "resetPasswordToken": '',
          "confirmationToken": '',
          "confirmed": false,
          "blocked": false,
          "role": "1",
          "created_by": "1",
          "updated_by": "1"
        }),
        headers: headers);
    print(response.body);
  }

  @action
  Future<void> launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
