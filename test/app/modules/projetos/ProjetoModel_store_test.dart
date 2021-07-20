import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/modules/projetos/ProjetoModel_store.dart';
 
void main() {
  late ProjetoModelStore store;

  setUpAll(() {
    store = ProjetoModelStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}