import 'package:engesoft/app/modules/cliente/ClienteModel_store.dart';
import 'package:engesoft/app/modules/cliente/cliente_page.dart';
import 'package:engesoft/app/modules/cliente/cliente_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClienteModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => ClienteModelStore()),
    Bind.lazySingleton((i) => ClienteStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ClientePage()),
  ];
}
