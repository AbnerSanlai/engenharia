import 'package:engesoft/app/modules/projetos/ProjetoModel_store.dart';
import 'package:flutter/material.dart';

import 'package:engesoft/constants.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CustomProjectWidget extends StatelessWidget {
  final ProjetoModelStore projeto;
  const CustomProjectWidget({
    Key? key,
    required this.projeto,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return InkWell(
        hoverColor: Colors.amber[100],
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // if you need this
                side: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    RowCustom(
                      nomeProjeto: projeto.nomeProjeto,
                      nomeCLiente: projeto.nomeCLiente,
                      telCliente: projeto.telCliente,
                      ruaCliente: projeto.ruaCliente,
                      numEndCliente: projeto.numEndCliente,
                      bairroCliente: projeto.bairroCliente,
                      cidadeUFCliente: projeto.cidadeUFCliente,
                    ),
                    Divider(
                      endIndent: 25,
                      indent: 25,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        CustomRowIcon(
                          textIcon1: 'Localização',
                          textIcon2: 'Orçamento',
                          caminhoImagem: getImagem(projeto.status),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(projeto.dataEntrega.toString())
                  ],
                ),
              )),
        ),
        onTap: () {},
      );
    });
  }
}

String getImagem(String status) {
  if (status == 'C') {
    return IMAGEM_CANCELADO;
  } else if (status == 'AC') {
    return IMAGEM_AGUARDANDO_CLIENTE;
  } else if (status == 'ORCA') {
    return IMAGEM_ORCAMENTO;
  } else {
    return '';
  }
}

class CustomRowIcon extends StatelessWidget {
  String textIcon1;
  String textIcon2;
  String? caminhoImagem;
  CustomRowIcon({
    Key? key,
    required this.textIcon1,
    required this.textIcon2,
    this.caminhoImagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        CustomIconBtn(
          caminhoImagem: 'assets/image/localizacao.png',
          funcaoBtn: () {},
        ),
        SizedBox(
          width: 10,
        ),
        Text(textIcon1),
        SizedBox(
          width: 20,
        ),
        Row(
          children: [
            CustomIconBtn(
              caminhoImagem: caminhoImagem,
              funcaoBtn: () {},
            ),
            SizedBox(
              width: 10,
            ),
            Text(textIcon2)
          ],
        ),
      ],
    );
  }
}

class CustomIconBtn extends StatelessWidget {
  String? caminhoImagem;
  VoidCallback funcaoBtn;
  CustomIconBtn({
    Key? key,
    this.caminhoImagem,
    required this.funcaoBtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(caminhoImagem!), fit: BoxFit.fill)),
      ),
    );
  }
}

class RowCustom extends StatelessWidget {
  final nomeProjeto;
  final nomeCLiente;
  final telCliente;
  final ruaCliente;
  final numEndCliente;
  final bairroCliente;
  final cidadeUFCliente;
  const RowCustom({
    Key? key,
    this.nomeProjeto,
    this.nomeCLiente,
    this.telCliente,
    this.ruaCliente,
    this.numEndCliente,
    this.bairroCliente,
    this.cidadeUFCliente,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black,
          child: Image.asset('assets/image/iconBombeiro.png'),
        ),
        SizedBox(
          width: 5,
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nomeProjeto,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(nomeCLiente),
              Text('End: ' + ruaCliente + ' N° ' + numEndCliente),
              Text('Bairro: ' + bairroCliente + ' - ' + cidadeUFCliente)
            ],
          ),
        )
      ],
    );
  }
}
