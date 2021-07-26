import 'package:flutter/material.dart';

class ClientePage extends StatefulWidget {
  final String title;
  const ClientePage({Key? key, this.title = 'ClientePage'}) : super(key: key);
  @override
  ClientePageState createState() => ClientePageState();
}
class ClientePageState extends State<ClientePage> {
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