import 'package:dio/dio.dart';
import 'package:engesoft/app/model/UserModel.dart';
import 'package:engesoft/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
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
  Future<void> login() async {
    final dio = Dio();
    final response = await dio.get("https://google.com");
    print(response);
  }
}
