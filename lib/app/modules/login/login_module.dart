import 'package:engesoft/app/modules/login/cadastro/cadastro_page.dart';
import 'package:engesoft/app/modules/login/cadastro/cadastro_store.dart';
import 'package:engesoft/app/modules/login/auth_google.dart';
import 'package:engesoft/app/modules/login/login_page.dart';
import 'package:engesoft/app/modules/webpage/webpage_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CadastroStore()),
    Bind.lazySingleton((i) => GoogleSignInProvider()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
    ChildRoute('/cadastro', child: (_, args) => CadastroPage()),
    ChildRoute('/webpage', child: (_, args) => WebpagePage()),
  ];
}
