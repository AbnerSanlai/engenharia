import 'package:mobx/mobx.dart';

part 'ClienteModel_store.g.dart';

class ClienteModelStore = _ClienteModelStoreBase with _$ClienteModelStore;

abstract class _ClienteModelStoreBase with Store {
  _ClienteModelStoreBase({
    required this.id,
    required this.nome,
    required this.idCliente,
    required this.endereco,
    required this.dataEntrega,
    required this.statusProjeto,
    required this.tipoProjeto,
  });
  late final String id;
  late final String nome;
  late final int idCliente;
  late final Endereco endereco;
  late final String dataEntrega;
  late final String statusProjeto;
  late final String tipoProjeto;

  _ClienteModelStoreBase.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    idCliente = json['idCliente'];
    endereco = Endereco.fromJson(json['endereco']);
    dataEntrega = json['dataEntrega'];
    statusProjeto = json['statusProjeto'];
    tipoProjeto = json['tipoProjeto'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nome'] = nome;
    _data['idCliente'] = idCliente;
    _data['endereco'] = endereco.toJson();
    _data['dataEntrega'] = dataEntrega;
    _data['statusProjeto'] = statusProjeto;
    _data['tipoProjeto'] = tipoProjeto;
    return _data;
  }
}

class Endereco {
  Endereco({
    required this.id,
    required this.Rua,
    required this.Numero,
    required this.bairro,
    required this.idCidade,
  });
  late final String id;
  late final String Rua;
  late final String Numero;
  late final String bairro;
  late final String idCidade;

  Endereco.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    Rua = json['Rua'];
    Numero = json['Numero'];
    bairro = json['bairro'];
    idCidade = json['idCidade'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['Rua'] = Rua;
    _data['Numero'] = Numero;
    _data['bairro'] = bairro;
    _data['idCidade'] = idCidade;
    return _data;
  }
}
