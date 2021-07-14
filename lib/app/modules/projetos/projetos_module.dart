import 'package:engesoft/app/modules/projetos/projetos_page.dart';
import 'package:engesoft/app/modules/projetos/projetos_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProjetosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProjetosStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ProjetosPage()),
  ];
}
