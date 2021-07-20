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
        color: Colors.amber.shade100,
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: CustomStackWidget(
                funcaoclick: () {
                  Modular.to.pushNamed('/projetos');
                },
                localImage: 'assets/image/projetos.jpg',
                title: 'Meus Projetos',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: CustomStackWidget(
                funcaoclick: () {},
                localImage: 'assets/image/calculadora.jpg',
                title: 'Calculos',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: CustomStackWidget(
                funcaoclick: () {},
                localImage: 'assets/image/tips.jpg',
                title: 'Instruções',
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
