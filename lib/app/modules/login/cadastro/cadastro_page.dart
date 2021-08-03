import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:engesoft/app/modules/controller/customalert/customalert_store.dart';
import 'package:engesoft/app/modules/login/cadastro/cadastro_store.dart';
import 'package:engesoft/app/modules/login/custom_button_widget.dart';
import 'package:engesoft/app/modules/login/custom_form_field_widget.dart';
import 'package:engesoft/app/widgets/custom_alert_dialog_alert_widget.dart';
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
  CustomalertStore customDialog = Modular.get();
  CadastroStore cadastroStore = Modular.get();
  FocusNode focusFielSenha = FocusNode();
  FocusNode focusFielRepetirSenha = FocusNode();
  FocusNode focusFieldNome = FocusNode();
  FocusNode focusFieldEmail = FocusNode();

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
                        corIcon: Colors.amber,
                        foco: focusFieldNome,
                      )),
              SizedBox(
                height: 25,
              ),
              Observer(
                builder: (context) => CustomFormFieldWidget(
                  label: 'Email',
                  icon: Icons.email,
                  controller: cadastroStore.emailController,
                  typekey: TextInputType.emailAddress,
                  //funcao: cadastroStore.changeUserLogin(emailController),
                  obscure: false,
                  corIcon: Colors.amber,
                  foco: focusFieldEmail,
                ),
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
                        funcao: cadastroStore.setvisibleSenha,
                        obscure: cadastroStore.verSenha == true ? false : true,
                        corIcon: Colors.amber,
                        foco: focusFielSenha,
                      )),
              SizedBox(
                height: 25,
              ),
              Observer(
                builder: (context) => CustomFormFieldWidget(
                  label: 'Repetir Senha',
                  icon: Icons.lock,
                  controller: cadastroStore.repetirSenhaController,
                  typekey: TextInputType.text,
                  funcao: cadastroStore.setvisibleRepSenha,
                  obscure: cadastroStore.verRepSenha == true ? false : true,
                  corIcon: Colors.amber,
                  foco: focusFielRepetirSenha,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              CustomButtonWidget(
                title: 'Cadastrar',
                onTap: () {
                  if (!cadastroStore.verificaSenha()) {
                    customDialog.customAlertWarning(
                        context, 'Senhas não Conferem', 'Atenção', () {
                      focusFielSenha.requestFocus();
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
