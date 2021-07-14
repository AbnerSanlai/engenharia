// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
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

  final _$user2Atom = Atom(name: '_LoginStoreBase.user2');

  @override
  dynamic get user2 {
    _$user2Atom.reportRead();
    return super.user2;
  }

  @override
  set user2(dynamic value) {
    _$user2Atom.reportWrite(value, super.user2, () {
      super.user2 = value;
    });
  }

  final _$userMailAtom = Atom(name: '_LoginStoreBase.userMail');

  @override
  dynamic get userMail {
    _$userMailAtom.reportRead();
    return super.userMail;
  }

  @override
  set userMail(dynamic value) {
    _$userMailAtom.reportWrite(value, super.userMail, () {
      super.userMail = value;
    });
  }

  final _$userPhotoAtom = Atom(name: '_LoginStoreBase.userPhoto');

  @override
  dynamic get userPhoto {
    _$userPhotoAtom.reportRead();
    return super.userPhoto;
  }

  @override
  set userPhoto(dynamic value) {
    _$userPhotoAtom.reportWrite(value, super.userPhoto, () {
      super.userPhoto = value;
    });
  }

  final _$userNameAtom = Atom(name: '_LoginStoreBase.userName');

  @override
  dynamic get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(dynamic value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
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
ver: ${ver},
idToken: ${idToken},
accessToken: ${accessToken},
user: ${user},
user2: ${user2},
userMail: ${userMail},
userPhoto: ${userPhoto},
userName: ${userName}
    ''';
  }
}
