import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/repositorio/dio_repository.dart';
 
void main() {
  late DioRepository repository;

  setUpAll(() {
    repository = DioRepository();
  });
}