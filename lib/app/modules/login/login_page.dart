import 'package:engesoft/app/modules/login/auth_google.dart';
import 'package:engesoft/app/modules/login/custom_button_widget.dart';
import 'package:engesoft/app/modules/login/custom_form_field_widget.dart';
import 'package:engesoft/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  LoginStore loginStore = Modular.get();
  GoogleSignInProvider googleSignInProvider = Modular.get();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/fundo.jpg'),
                fit: BoxFit.fitHeight)),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
            child: Center(
              child: Container(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: size >= 800 ? 500 : 0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/image/logo.png'),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text("EngenAPP",
                            style: GoogleFonts.openSans(color: Colors.black)),
                        SizedBox(
                          height: 25,
                        ),
                        CustomFormFieldWidget(
                          label: 'Login',
                          icon: Icons.email,
                          controller: emailController,
                          typekey: TextInputType.emailAddress,
                          obscure: false,
                          corIcon: Colors.amber,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Observer(
                          builder: (context) => CustomFormFieldWidget(
                              label: 'Senha',
                              icon: Icons.lock,
                              controller: passwordController,
                              typekey: TextInputType.text,
                              funcao: loginStore.setvisible,
                              obscure: loginStore.ver == true ? false : true,
                              corIcon: Colors.amber),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomButtonWidget(
                          onTap: () {
                            Modular.to.pushReplacementNamed('/home');
                          },
                          title: 'Logar',
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomButtonWidget(
                          onTap: () {
                            Modular.to.pushNamed('/cadastro');
                          },
                          title: 'Cadastrar',
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size >= 800 ? 50 : 50),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  endIndent: 5,
                                  color: Colors.amber,
                                ),
                              ),
                              Text(
                                'OR',
                                style: TextStyle(color: Colors.amber),
                              ),
                              Expanded(
                                child: Divider(
                                  indent: 5,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onTap: () {
                                  loginStore.logout();
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/facebook.png'),
                                          fit: BoxFit.fill)),
                                )),
                            InkWell(
                                onTap: () {
                                  loginStore.signInWithGoogle();
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/image/google.png'),
                                            fit: BoxFit.fill)),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
