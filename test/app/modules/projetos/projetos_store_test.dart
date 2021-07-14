import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/modules/projetos/projetos_store.dart';
 
void main() {
  late ProjetosStore store;

  setUpAll(() {
    store = ProjetosStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}