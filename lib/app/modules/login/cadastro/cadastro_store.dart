import 'package:engesoft/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';

part 'cadastro_store.g.dart';

class CadastroStore = _CadastroStoreBase with _$CadastroStore;

abstract class _CadastroStoreBase with Store {
  LoginStore loginStore = Modular.get();
  @observable
  TextEditingController nomeController = TextEditingController();
  @observable
  TextEditingController emailController = TextEditingController();
  @observable
  TextEditingController senhaController = TextEditingController();
  @observable
  TextEditingController repetirSenhaController = TextEditingController();

  @observable
  bool verSenha = false;
  @observable
  bool verRepSenha = false;

  @action
  void setvisibleSenha() {
    verSenha = !verSenha;
  }

  @action
  void setvisibleRepSenha() {
    verRepSenha = !verRepSenha;
  }

  @action
  bool verificaSenha() {
    return senhaController.text == repetirSenhaController.text;
  }

  @action
  bool validaEmail() {
    return emailController.text.contains('@');
  }

  @action
  void cadastrar(BuildContext context) {
    if (!verificaSenha() || !validaEmail()) {}
    loginStore.register(nomeController.text, emailController.text, 'local',
        senhaController.text, '', '');
  }
}
