import 'package:flutter/material.dart';

class UsuarioPage extends StatefulWidget {
  final String title;
  const UsuarioPage({Key? key, this.title = 'UsuarioPage'}) : super(key: key);
  @override
  UsuarioPageState createState() => UsuarioPageState();
}
class UsuarioPageState extends State<UsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}