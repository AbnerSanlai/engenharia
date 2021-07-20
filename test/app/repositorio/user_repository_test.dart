import 'package:flutter_test/flutter_test.dart';
import 'package:engesoft/app/repositorio/user_repository.dart';
 
void main() {
  late UserRepository repository;

  setUpAll(() {
    repository = UserRepository();
  });
}