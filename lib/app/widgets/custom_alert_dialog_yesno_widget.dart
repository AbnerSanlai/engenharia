import 'package:flutter/material.dart';

class CustomAlertDialogYesnoWidget extends StatelessWidget {
  final String title;
  final String msg;
  const CustomAlertDialogYesnoWidget(
      {Key? key, required this.title, required this.msg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
    );
  }
}
