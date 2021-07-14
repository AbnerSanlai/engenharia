import 'package:engesoft/app/modules/home/home_store.dart';
import 'package:engesoft/app/modules/login/login_store.dart';
import 'package:engesoft/app/widgets/custom_drawer_widget.dart';
import 'package:engesoft/app/widgets/custom_stack_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
//import 'package:slidy_testes/app/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  LoginStore loginStore = Modular.get();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsIconTheme: IconThemeData(color: Colors.amber.shade400),
          title: Text("Home"),
          actions: [
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
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: CustomStackWidget(
                funcaoclick: () {},
                icon: Icons.construction,
                title: 'Meus Projetos',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: CustomStackWidget(
                funcaoclick: () {},
                icon: Icons.calculate,
                title: 'Calculos',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: CustomStackWidget(
                funcaoclick: () {},
                icon: Icons.account_tree,
                title: 'Dicas',
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
