import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  void custom(BuildContext buildContext) {
    AwesomeDialog(
      context: buildContext,
      dialogType: DialogType.INFO_REVERSED,
      borderSide: BorderSide(color: Colors.green, width: 2),
      width: 280,
      buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
      headerAnimationLoop: false,
      animType: AnimType.BOTTOMSLIDE,
      title: 'INFORMAÇÃO',
      desc: '',
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    )..show();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
