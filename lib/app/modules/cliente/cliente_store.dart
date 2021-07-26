import 'package:mobx/mobx.dart';

part 'cliente_store.g.dart';

class ClienteStore = _ClienteStoreBase with _$ClienteStore;

abstract class _ClienteStoreBase with Store {
  @observable
  int value = 0;
}
