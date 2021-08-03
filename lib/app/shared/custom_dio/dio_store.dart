import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'dio_store.g.dart';

class DioStore = _DioStoreBase with _$DioStore;

abstract class _DioStoreBase with Store {
  Dio dio = Dio();
}
