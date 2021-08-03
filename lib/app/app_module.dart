import 'package:engesoft/app/modules/controller/customalert/customalert_store.dart';
import 'package:engesoft/app/modules/webpage/webpage_page.dart';
import 'package:engesoft/app/shared/custom_dio/dio_store.dart';
import 'package:engesoft/app/modules/cliente/cliente_module.dart';
import 'package:engesoft/app/modules/home/home_module.dart';
import 'package:engesoft/app/modules/login/login_module.dart';
import 'package:engesoft/app/modules/login/login_store.dart';
import 'package:engesoft/app/modules/projetos/projetos_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CustomalertStore()),
    Bind.lazySingleton((i) => DioStore()),
    Bind.lazySingleton((i) => LoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/projetos', module: ProjetosModule()),
    ModuleRoute('/clientes', module: ClienteModule()),
  ];
}
