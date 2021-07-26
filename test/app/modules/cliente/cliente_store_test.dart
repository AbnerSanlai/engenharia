import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/modules/cliente/cliente_store.dart';
 
void main() {
  late ClienteStore store;

  setUpAll(() {
    store = ClienteStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}