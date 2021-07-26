import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/modules/usuario_store.dart';
 
void main() {
  late UsuarioStore store;

  setUpAll(() {
    store = UsuarioStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}