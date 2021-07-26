import 'package:mobx/mobx.dart';

part 'usuario_store.g.dart';

class UsuarioStore = _UsuarioStoreBase with _$UsuarioStore;
abstract class _UsuarioStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}