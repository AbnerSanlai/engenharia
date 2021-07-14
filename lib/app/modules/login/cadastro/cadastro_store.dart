import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStoreBase with _$CadastroStore;

abstract class _CadastroStoreBase with Store {
  @observable
  var userNome;

  @action
  changeUserName(value) => userNome = value;

  @observable
  var userLogin;

  @action
  changeUserLogin(value) => userLogin = value;

  @observable
  var userSenha;

  @action
  changeUserSenha(value) => userSenha = value;

  @observable
  var userRepetirSenha;
  @action
  changeUserRepetirSenha(value) => userRepetirSenha = value;

  @action
  bool verificaSenha() {
    return userSenha == userRepetirSenha;
  }

  @action
  bool isCadValido() {
    return (userNome != null ||
            userLogin != null ||
            userRepetirSenha != null ||
            userSenha != null) &&
        verificaSenha();
  }
}
