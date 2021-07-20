import 'package:engesoft/app/modules/login/cadastro/cadastro_store.dart';
import 'package:engesoft/app/modules/login/custom_button_widget.dart';
import 'package:engesoft/app/modules/login/custom_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key? key, this.title = 'CadastroPage'}) : super(key: key);
  @override
  CadastroPageState createState() => CadastroPageState();
}

class CadastroPageState extends State<CadastroPage> {
  CadastroStore cadastroStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/engineer.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 50,
              ),
              Observer(
                  builder: (context) => CustomFormFieldWidget(
                      label: 'Nome',
                      icon: Icons.people,
                      controller: cadastroStore.nomeController,
                      typekey: TextInputType.text,
                      //  funcao: cadastroStore.changeUserName(nomeController),
                      obscure: false,
                      corIcon: Colors.amber)),
              SizedBox(
                height: 25,
              ),
              Observer(
                builder: (context) => CustomFormFieldWidget(
                    label: 'Login',
                    icon: Icons.email,
                    controller: cadastroStore.emailController,
                    typekey: TextInputType.text,
                    //funcao: cadastroStore.changeUserLogin(emailController),
                    obscure: true,
                    corIcon: Colors.amber),
              ),
              SizedBox(
                height: 25,
              ),
              Observer(
                  builder: (context) => CustomFormFieldWidget(
                      label: 'Senha',
                      icon: Icons.lock,
                      controller: cadastroStore.senhaController,
                      typekey: TextInputType.text,
                      funcao: cadastroStore.setvisible,
                      obscure: cadastroStore.ver == true ? false : true,
                      corIcon: Colors.amber)),
              SizedBox(
                height: 25,
              ),
              Observer(
                  builder: (context) => CustomFormFieldWidget(
                      label: 'Repetir Senha',
                      icon: Icons.lock,
                      controller: cadastroStore.repetirSenhaController,
                      typekey: TextInputType.text,
                      funcao: cadastroStore.setvisible,
                      obscure: cadastroStore.ver == true ? false : true,
                      corIcon: Colors.amber)),
              SizedBox(
                height: 25,
              ),
              CustomButtonWidget(
                title: 'Cadastrar',
                onTap: () {
                  print(cadastroStore.nomeController);
                  /*        if (senhaController.text != '' &&
                      repetirSenhaController.text != '' &&
                      nomeController != '' &&
                      emailController != '') {
                    if (senhaController.text == repetirSenhaController.text) {
                      Modular.to.pushReplacementNamed('/');
                    }
                  } */
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
