import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';

part 'customalert_store.g.dart';

class CustomalertStore = _CustomalertStoreBase with _$CustomalertStore;

abstract class _CustomalertStoreBase with Store {
  @action
  void customAlertError(BuildContext buildContext, String msg, String title,
      VoidCallback funcbutton) {
    AwesomeDialog(
      context: buildContext,
      dialogType: DialogType.WARNING,
      borderSide: BorderSide(color: Colors.amber, width: 2),
      width: 350,
      buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
      headerAnimationLoop: false,
      animType: AnimType.TOPSLIDE,
      body: Column(
        children: [Text('Atenção'), Text('Atenção')],
      ),
      showCloseIcon: false,
      btnOkOnPress: funcbutton,
    )..show();
  }

  void customAlertWarning(BuildContext buildContext, String msg, String title,
      VoidCallback funcbutton) {
    AwesomeDialog(
      context: buildContext,
      btnOkColor: Colors.orange,
      dialogType: DialogType.WARNING,
      borderSide: BorderSide(color: Colors.amber, width: 2),
      width: 350,
      buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
      headerAnimationLoop: false,
      animType: AnimType.TOPSLIDE,
      body: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.abel(color: Colors.red, fontSize: 16),
          ),
          Text(
            msg,
            style: GoogleFonts.abel(color: Colors.black, fontSize: 16),
          )
        ],
      ),
      showCloseIcon: false,
      btnOkOnPress: funcbutton,
    )..show();
  }
}
