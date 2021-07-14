import 'package:flutter/material.dart';

class CustomDrawerWidget extends StatelessWidget {
  final String title;
  final VoidCallback? funcaoSair;
  //final VoidCallback? funcaoMinhaConta;
  // final VoidCallback? funcaoMeusProjetos;
  final String? userMail;
  final String? userName;
  final String? userPhoto;
  const CustomDrawerWidget(
      {Key? key,
      this.title = "CustomDrawerWidget",
      this.funcaoSair,
      //this.funcaoMinhaConta,
      //  this.funcaoMeusProjetos,
      this.userMail,
      this.userName,
      this.userPhoto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.amber.shade200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(userMail!),
              accountName: Text(userName!),
              currentAccountPicture: CircleAvatar(
                child: Image.network(
                  userPhoto!,
                ),
                radius: 0.5,
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Minha conta"),
                  onTap: () {
                    // Navigator.pop(context);
                    //Navegar para outra página
                  },
                ),
                ListTile(
                  leading: Icon(Icons.house),
                  title: Text("Meus Projetos"),
                  onTap: () {
                    //Navigator.pop(context);
                    //Navegar para outra página
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Sair"),
                  onTap: this.funcaoSair,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

/*   @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback?>.has(
        'funcaoMinhaConta', funcaoMinhaConta));
  } */
}
