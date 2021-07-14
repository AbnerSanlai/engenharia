import 'package:flutter/material.dart';

class ProjetosPage extends StatefulWidget {
  final String title;
  const ProjetosPage({Key? key, this.title = 'ProjetosPage'}) : super(key: key);
  @override
  ProjetosPageState createState() => ProjetosPageState();
}

class ProjetosPageState extends State<ProjetosPage> {
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
