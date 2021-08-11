import 'dart:convert';
import 'package:engesoft/app/model/UserModel.dart';
import 'package:engesoft/app/modules/controller/customalert/customalert_store.dart';
import 'package:engesoft/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  CustomAlertStore customDialog = Modular.get();

  @observable
  var user;
  @observable
  var photo;
  @observable
  var userModel;

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

  @action
  bool validarEmail() {
    return (emailController.text != '') && (emailController.text.contains('@'));
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

  Future<void> login(BuildContext context) async {
    //final dio = Dio();
    try {
      final response = await http.post(Uri.parse(BASE_URL_AUTH), body: {
        "identifier": emailController.text,
        "password": senhaController.text,
      });
      var json = jsonDecode(response.body);
      if (response.statusCode == 200) {
        this.user = User.fromJson(json["user"]);
        this.photo = Photo.fromJson(json["user"]["photo"]);
        Modular.to.pushReplacementNamed('/home');
      } else if (response.statusCode == 400) {
        customDialog.customAlertWarning(
            context, "Email ou senha invalidos", 'Atenção', () {});
      }
    } catch (e) {
      print(e);
    }
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
