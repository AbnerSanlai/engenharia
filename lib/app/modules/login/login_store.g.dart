// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
  final _$userModelAtom = Atom(name: '_LoginStoreBase.userModel');

  @override
  ObservableList<UserModel> get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(ObservableList<UserModel> value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  final _$verAtom = Atom(name: '_LoginStoreBase.ver');

  @override
  bool get ver {
    _$verAtom.reportRead();
    return super.ver;
  }

  @override
  set ver(bool value) {
    _$verAtom.reportWrite(value, super.ver, () {
      super.ver = value;
    });
  }

  final _$idTokenAtom = Atom(name: '_LoginStoreBase.idToken');

  @override
  dynamic get idToken {
    _$idTokenAtom.reportRead();
    return super.idToken;
  }

  @override
  set idToken(dynamic value) {
    _$idTokenAtom.reportWrite(value, super.idToken, () {
      super.idToken = value;
    });
  }

  final _$accessTokenAtom = Atom(name: '_LoginStoreBase.accessToken');

  @override
  dynamic get accessToken {
    _$accessTokenAtom.reportRead();
    return super.accessToken;
  }

  @override
  set accessToken(dynamic value) {
    _$accessTokenAtom.reportWrite(value, super.accessToken, () {
      super.accessToken = value;
    });
  }

  final _$userAtom = Atom(name: '_LoginStoreBase.user');

  @override
  dynamic get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(dynamic value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$signInWithGoogleAsyncAction =
      AsyncAction('_LoginStoreBase.signInWithGoogle');

  @override
  Future<void> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  final _$logoutAsyncAction = AsyncAction('_LoginStoreBase.logout');

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$loginAsyncAction = AsyncAction('_LoginStoreBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase');

  @override
  void setvisible() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setvisible');
    try {
      return super.setvisible();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userModel: ${userModel},
ver: ${ver},
idToken: ${idToken},
accessToken: ${accessToken},
user: ${user}
    ''';
  }
}
