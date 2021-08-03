import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/shared/custom_dio/dio_store.dart';
 
void main() {
  late DioStore store;

  setUpAll(() {
    store = DioStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}