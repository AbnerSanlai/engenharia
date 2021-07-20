import 'package:engesoft/app/modules/projetos/ProjetoModel_store.dart';
import 'package:mobx/mobx.dart';

part 'projetos_store.g.dart';

class ProjetosStore = _ProjetosStoreBase with _$ProjetosStore;

abstract class _ProjetosStoreBase with Store {
  List<ProjetoModelStore> listProjetos = [
    ProjetoModelStore(
        nomeCLiente: 'Abner Sanlai Probio Carvalho',
        nomeProjeto: 'Galpão',
        bairroCliente: 'Vila Nova',
        cidadeUFCliente: 'Blumenau - SC',
        numEndCliente: '1458',
        dataEntrega: DateTime.utc(2021, 12, 9),
        ruaCliente: 'Rua Pedro Leopoudino',
        status: 'ORCA',
        telCliente: '(49) 9 9999-9999',
        tipoProjeto: 'ORCA'),
    ProjetoModelStore(
        nomeCLiente: 'Abner Sanlai Probio Carvalho',
        nomeProjeto: 'Edificio Villa',
        bairroCliente: 'Vila Nova',
        cidadeUFCliente: 'Blumenau - SC',
        numEndCliente: '1458',
        dataEntrega: DateTime.utc(2021, 2, 9),
        ruaCliente: 'Rua Pedro Leopoudino',
        status: 'AC',
        telCliente: '(49) 9 9999-9999',
        tipoProjeto: 'AC'),
    ProjetoModelStore(
        nomeCLiente: 'Abner Sanlai Probio Carvalho',
        nomeProjeto: 'Parque exposição',
        bairroCliente: 'Vila Nova',
        cidadeUFCliente: 'Blumenau - SC',
        numEndCliente: '1458',
        dataEntrega: DateTime.utc(2021, 4, 9),
        ruaCliente: 'Rua Pedro Leopoudino',
        status: 'C',
        telCliente: '(49) 9 9999-9999',
        tipoProjeto: 'C')
  ];
}
