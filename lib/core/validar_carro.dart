class ValidarCarro {
  validaCarro(String placa, bool disponivel, bool documentacao) {
    possuiuPlaca(placa);
    carroEstaDisponivel(disponivel);
  }

  String possuiuPlaca(String placa) {
    if (placa.isNotEmpty) throw Exception('Veiculo não possuiu placa');
    return placa;
  }

  bool carroEstaDisponivel(bool disponivel) {
    if (disponivel == true) throw Exception('Carro disponivel');
    return false;
  }

  bool documentacaoOk(bool documentacao){
    if(documentacao == true) throw Exception('Falha na documentacao');
    return false;
  }
}
