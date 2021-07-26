import 'package:engesoft/app/modules/usuario/usuario_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UsuarioModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UsuarioStore()),
  ];

  @override
  final List<ModularRoute> routes = [];
}
