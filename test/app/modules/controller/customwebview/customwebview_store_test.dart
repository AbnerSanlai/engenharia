import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/modules/controller/customwebview/customwebview_store.dart';
 
void main() {
  late CustomwebviewStore store;

  setUpAll(() {
    store = CustomwebviewStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}