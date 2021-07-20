import 'package:mobx/mobx.dart';

import '../../../constants.dart';

part 'ProjetoModel_store.g.dart';

class ProjetoModelStore = _ProjetoModelStoreBase with _$ProjetoModelStore;

abstract class _ProjetoModelStoreBase with Store {
  @observable
  String nomeProjeto;
  @action
  setNomeProjeto(String value) => nomeProjeto = value;
  @observable
  String nomeCLiente;
  @action
  setNomeCLiente(String nomeCLiente) => this.nomeCLiente = nomeCLiente;
  @observable
  String telCliente;
  @action
  setTelCliente(String telCliente) => this.telCliente = telCliente;
  @observable
  String ruaCliente;
  @action
  setRuaCliente(String ruaCliente) => this.ruaCliente = ruaCliente;
  @observable
  String numEndCliente;
  @action
  setNumEndCliente(String numEndCliente) => this.numEndCliente = numEndCliente;
  @observable
  String bairroCliente;
  @action
  setBairroCliente(String bairroCliente) => this.bairroCliente = bairroCliente;
  @observable
  String cidadeUFCliente;
  @action
  setCidadeUFCliente(String cidadeUFCliente) =>
      this.cidadeUFCliente = cidadeUFCliente;
  @observable
  DateTime dataEntrega;
  @action
  setDataEntrega(DateTime dataEntrega) => this.dataEntrega = dataEntrega;
  @observable
  String tipoProjeto;
  @action
  setTipoProjeto(String tipoProjeto) => this.tipoProjeto = tipoProjeto;

  String status;
  @action
  setStatus(String status) => this.status = status;

  @observable
  String? caminhoImagemIcon;

  _ProjetoModelStoreBase({
    required this.nomeProjeto,
    required this.nomeCLiente,
    required this.telCliente,
    required this.ruaCliente,
    required this.numEndCliente,
    required this.bairroCliente,
    required this.cidadeUFCliente,
    required this.dataEntrega,
    required this.tipoProjeto,
    required this.status,
  });
}
