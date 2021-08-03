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

  final _$verSenhaAtom = Atom(name: '_CadastroStoreBase.verSenha');

  @override
  bool get verSenha {
    _$verSenhaAtom.reportRead();
    return super.verSenha;
  }

  @override
  set verSenha(bool value) {
    _$verSenhaAtom.reportWrite(value, super.verSenha, () {
      super.verSenha = value;
    });
  }

  final _$verRepSenhaAtom = Atom(name: '_CadastroStoreBase.verRepSenha');

  @override
  bool get verRepSenha {
    _$verRepSenhaAtom.reportRead();
    return super.verRepSenha;
  }

  @override
  set verRepSenha(bool value) {
    _$verRepSenhaAtom.reportWrite(value, super.verRepSenha, () {
      super.verRepSenha = value;
    });
  }

  final _$_CadastroStoreBaseActionController =
      ActionController(name: '_CadastroStoreBase');

  @override
  void setvisibleSenha() {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.setvisibleSenha');
    try {
      return super.setvisibleSenha();
    } finally {
      _$_CadastroStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setvisibleRepSenha() {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.setvisibleRepSenha');
    try {
      return super.setvisibleRepSenha();
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
  void cadastrar() {
    final _$actionInfo = _$_CadastroStoreBaseActionController.startAction(
        name: '_CadastroStoreBase.cadastrar');
    try {
      return super.cadastrar();
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
verSenha: ${verSenha},
verRepSenha: ${verRepSenha}
    ''';
  }
}
