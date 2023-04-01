class ValidarCarro {
  validaCarro(String placa, bool disponivel) {
    possuiuPlaca(placa);
    carroEstaDisponivel(disponivel);
  }

  bool possuiuPlaca(String placa) {
    if (placa.isEmpty) throw Exception('CNH não pode ser vazia');
    return true;
  }

  bool carroEstaDisponivel(bool disponivel) {
    if (disponivel == true) throw Exception('Carro disponivel');
    return false;
  }
}
