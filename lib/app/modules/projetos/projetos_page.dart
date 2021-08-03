import 'package:engesoft/app/modules/login/custom_form_field_widget.dart';
import 'package:engesoft/app/modules/projetos/custom_project_widget.dart';
import 'package:engesoft/app/modules/projetos/projetos_store.dart';
import 'package:flutter/material.dart';
import 'package:engesoft/app/widgets/custom_drawer_widget.dart';
import 'package:engesoft/app/modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';

class ProjetosPage extends StatefulWidget {
  final String title;
  const ProjetosPage({Key? key, this.title = 'Projetos'}) : super(key: key);
  @override
  ProjetosPageState createState() => ProjetosPageState();
}

class ProjetosPageState extends State<ProjetosPage> {
  LoginStore loginStore = Modular.get();
  ProjetosStore projetosStore = Modular.get();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsIconTheme: IconThemeData(color: Colors.amber.shade200),
          title: TextField(
            decoration: InputDecoration(hintText: "Pesquisar...."),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.black,
            )
          ]),
      drawer: CustomDrawerWidget(
        funcaoSair: loginStore.logout,
        userMail: loginStore.user.email,
        userName: loginStore.user.displayName,
        userPhoto: loginStore.user.photoURL,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/fundoEnge.jpg'),
                fit: BoxFit.fitHeight)),
        child: ListView.builder(
          padding: EdgeInsets.all(4),
          itemCount: projetosStore.listProjetos.length,
          itemBuilder: (_, index) {
            var projeto = projetosStore.listProjetos[index];
            return CustomProjectWidget(
              projeto: projeto,
            );
          },
        ),
      ),
    );
  }
}
