// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroStore on _CadastroStoreBase, Store {
  final _$nomeControllerAtom = Atom(name: '_CadastroStoreBase.nomeController');

  @override
  TextEditingController get nomeController {
    _$nomeControllerAtom.reportRead();
    return super.nomeController;
  }

  @override
  set nomeController(TextEditingController value) {
    _$nomeControllerAtom.reportWrite(value, super.nomeController, () {
      super.nomeController = value;
    });
  }

  final _$emailControllerAtom =
      Atom(name: '_CadastroStoreBase.emailController');

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

  final _$senhaControllerAtom =
      Atom(name: '_CadastroStoreBase.senhaController');

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

  final _$repetirSenhaControllerAtom =
      Atom(name: '_CadastroStoreBase.repetirSenhaController');

  @override
  TextEditingController get repetirSenhaController {
    _$repetirSenhaControllerAtom.reportRead();
    return super.repetirSenhaController;
  }

  @override
  set repetirSenhaController(TextEditingController value) {
    _$repetirSenhaControllerAtom
        .reportWrite(value, super.repetirSenhaController, () {
      super.repetirSenhaController = value;
    });
  }

  final _$verAtom = Atom(name: '_CadastroStoreBase.ver');

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
  void setvisible() {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.setvisible');
    try {
      return super.setvisible();
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
nomeController: ${nomeController},
emailController: ${emailController},
senhaController: ${senhaController},
repetirSenhaController: ${repetirSenhaController},
ver: ${ver}
    ''';
  }
}
