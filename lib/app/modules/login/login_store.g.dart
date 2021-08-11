// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
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

  final _$photoAtom = Atom(name: '_LoginStoreBase.photo');

  @override
  dynamic get photo {
    _$photoAtom.reportRead();
    return super.photo;
  }

  @override
  set photo(dynamic value) {
    _$photoAtom.reportWrite(value, super.photo, () {
      super.photo = value;
    });
  }

  final _$userModelAtom = Atom(name: '_LoginStoreBase.userModel');

  @override
  dynamic get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(dynamic value) {
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

  final _$emailControllerAtom = Atom(name: '_LoginStoreBase.emailController');

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  final _$senhaControllerAtom = Atom(name: '_LoginStoreBase.senhaController');

  @override
  TextEditingController get senhaController {
    _$senhaControllerAtom.reportRead();
    return super.senhaController;
  }

  @override
  set senhaController(TextEditingController value) {
    _$senhaControllerAtom.reportWrite(value, super.senhaController, () {
      super.senhaController = value;
    });
  }

  final _$loginGoogleAsyncAction = AsyncAction('_LoginStoreBase.loginGoogle');

  @override
  Future<void> loginGoogle() {
    return _$loginGoogleAsyncAction.run(() => super.loginGoogle());
  }

  final _$registerAsyncAction = AsyncAction('_LoginStoreBase.register');

  @override
  Future<void> register(dynamic username, dynamic email, dynamic provider,
      dynamic password, dynamic resetPasswordToken, dynamic confirmationToken) {
    return _$registerAsyncAction.run(() => super.register(username, email,
        provider, password, resetPasswordToken, confirmationToken));
  }

  final _$launchInWebViewOrVCAsyncAction =
      AsyncAction('_LoginStoreBase.launchInWebViewOrVC');

  @override
  Future<void> launchInWebViewOrVC(String url) {
    return _$launchInWebViewOrVCAsyncAction
        .run(() => super.launchInWebViewOrVC(url));
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
  bool validarEmail() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.validarEmail');
    try {
      return super.validarEmail();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
photo: ${photo},
userModel: ${userModel},
ver: ${ver},
emailController: ${emailController},
senhaController: ${senhaController}
    ''';
  }
}
