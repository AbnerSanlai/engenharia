import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  final String title;
  final String? localImage;
  final IconData? icon;
  final VoidCallback? funcaoclick;
  const CustomStackWidget(
      {Key? key,
      this.title = "CustomStackWidget",
      this.icon,
      this.funcaoclick,
      this.localImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Container(
                margin: EdgeInsets.all(15),
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 5, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      )
                    ]),
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
                  border: Border.all(color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), //color of shadow
                      spreadRadius: 4, //spread radius
                      blurRadius: 5, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage(localImage!), fit: BoxFit.fill)),
            ),
          ],
        ),
        onTap: funcaoclick,
      ),
    );
  }
}
