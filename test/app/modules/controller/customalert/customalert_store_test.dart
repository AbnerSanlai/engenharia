import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/modules/controller/customalert/customalert_store.dart';
 
void main() {
  late CustomalertStore store;

  setUpAll(() {
    store = CustomalertStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}