// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroStore on _CadastroStoreBase, Store {
  final _$userNomeAtom = Atom(name: '_CadastroStoreBase.userNome');

  @override
  dynamic get userNome {
    _$userNomeAtom.reportRead();
    return super.userNome;
  }

  @override
  set userNome(dynamic value) {
    _$userNomeAtom.reportWrite(value, super.userNome, () {
      super.userNome = value;
    });
  }

  final _$userLoginAtom = Atom(name: '_CadastroStoreBase.userLogin');

  @override
  dynamic get userLogin {
    _$userLoginAtom.reportRead();
    return super.userLogin;
  }

  @override
  set userLogin(dynamic value) {
    _$userLoginAtom.reportWrite(value, super.userLogin, () {
      super.userLogin = value;
    });
  }

  final _$userSenhaAtom = Atom(name: '_CadastroStoreBase.userSenha');

  @override
  dynamic get userSenha {
    _$userSenhaAtom.reportRead();
    return super.userSenha;
  }

  @override
  set userSenha(dynamic value) {
    _$userSenhaAtom.reportWrite(value, super.userSenha, () {
      super.userSenha = value;
    });
  }

  final _$userRepetirSenhaAtom =
      Atom(name: '_CadastroStoreBase.userRepetirSenha');

  @override
  dynamic get userRepetirSenha {
    _$userRepetirSenhaAtom.reportRead();
    return super.userRepetirSenha;
  }

  @override
  set userRepetirSenha(dynamic value) {
    _$userRepetirSenhaAtom.reportWrite(value, super.userRepetirSenha, () {
      super.userRepetirSenha = value;
    });
  }

  final _$_CadastroStoreBaseActionController =
      ActionController(name: '_CadastroStoreBase');

  @override
  dynamic changeUserName(dynamic value) {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.changeUserName');
    try {
      return super.changeUserName(value);
    } finally {
      _$_CadastroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeUserLogin(dynamic value) {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.changeUserLogin');
    try {
      return super.changeUserLogin(value);
    } finally {
      _$_CadastroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeUserSenha(dynamic value) {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.changeUserSenha');
    try {
      return super.changeUserSenha(value);
    } finally {
      _$_CadastroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeUserRepetirSenha(dynamic value) {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.changeUserRepetirSenha');
    try {
      return super.changeUserRepetirSenha(value);
    } finally {
      _$_CadastroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool verificaSenha() {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.verificaSenha');
    try {
      return super.verificaSenha();
    } finally {
      _$_CadastroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isCadValido() {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.isCadValido');
    try {
      return super.isCadValido();
    } finally {
      _$_CadastroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userNome: ${userNome},
userLogin: ${userLogin},
userSenha: ${userSenha},
userRepetirSenha: ${userRepetirSenha}
    ''';
  }
}
