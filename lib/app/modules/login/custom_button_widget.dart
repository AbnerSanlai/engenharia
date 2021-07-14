import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const CustomButtonWidget({Key? key, this.title = "", this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 200.0,
        height: 40.0,
        alignment: FractionalOffset.center,
        decoration: new BoxDecoration(
          color: Colors.amber.withOpacity(0.8),
          borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.3,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
