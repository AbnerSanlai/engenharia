import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? funcaoclick;
  const CustomStackWidget(
      {Key? key, this.title = "CustomStackWidget", this.icon, this.funcaoclick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
              margin: EdgeInsets.all(15),
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(70, 22, 10, 10),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              )),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              child: Icon(
                icon,
                size: 40,
              ),
              onTap: funcaoclick,
            ),
          ),
        ],
      ),
    );
  }
}
