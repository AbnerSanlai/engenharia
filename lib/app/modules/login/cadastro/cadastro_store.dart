import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStoreBase with _$CadastroStore;

abstract class _CadastroStoreBase with Store {
  @observable
  TextEditingController nomeController = TextEditingController();

  @action
  changeUserName(value) => nomeController = value;

  @observable
  TextEditingController emailController = TextEditingController();

  @action
  changeUserLogin(value) => emailController = value;

  @observable
  TextEditingController senhaController = TextEditingController();

  @action
  changeUserSenha(value) => senhaController = value;

  @observable
  TextEditingController repetirSenhaController = TextEditingController();

  @action
  changeUserRepetirSenha(value) => repetirSenhaController = value;

  @observable
  bool ver = false;

  @action
  void setvisible() {
    ver = !ver;
  }

  @action
  bool verificaSenha() {
    return senhaController == repetirSenhaController;
  }

  @action
  bool isCadValido() {
    return (nomeController != null ||
            emailController != null ||
            repetirSenhaController != null ||
            senhaController != null) &&
        verificaSenha();
  }
}
