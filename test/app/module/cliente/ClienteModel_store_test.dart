import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/module/cliente/ClienteModel_store.dart';
 
void main() {
  late ClienteModelStore store;

  setUpAll(() {
    store = ClienteModelStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}