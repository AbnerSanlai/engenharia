import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormFieldWidget extends StatelessWidget {
  final String title;
  final String label;
  final IconData icon;
  final Color corIcon;
  final TextEditingController controller;
  final TextInputType typekey;
  final obscure;
  final VoidCallback? funcao;
  final FocusNode? foco;
  const CustomFormFieldWidget({
    Key? key,
    this.title = "CustomFormFieldWidget",
    required this.label,
    required this.icon,
    required this.controller,
    required this.typekey,
    required this.obscure,
    this.funcao,
    required this.corIcon,
    this.foco,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: size.width <= 800
          ? MediaQuery.of(context).size.width * .7
          : MediaQuery.of(context).size.width * .3, //70% da largura da tela
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.black45,
              offset: Offset(2, 2),
            )
          ]),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            focusNode: foco,
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: label,
                hintStyle: GoogleFonts.abel()),
            keyboardType: typekey,
            obscureText: obscure,
          )),
          InkWell(
            onTap: funcao,
            child: Icon(
              icon,
              color: corIcon,
            ),
          ) // Pode passar imagens ou icons
        ],
      ),
    );
  }
}
