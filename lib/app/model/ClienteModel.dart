class Cliente {
  final String nome;
  final String tel;
  final String rua;
  final String bairro;
  final String cidadeUf;

  get getNome => this.nome;
  get getTel => this.tel;
  get getRua => this.rua;
  get getBairro => this.bairro;
  get getCidadeUf => this.cidadeUf;

  Cliente(this.nome, this.tel, this.rua, this.bairro, this.cidadeUf);
}
