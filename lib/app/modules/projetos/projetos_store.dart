import 'package:mobx/mobx.dart';

part 'projetos_store.g.dart';

class ProjetosStore = _ProjetosStoreBase with _$ProjetosStore;
abstract class _ProjetosStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}