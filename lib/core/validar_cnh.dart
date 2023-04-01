class ValidarCnh {
  validarCnh(String cnh) {
    possuiCnh(cnh);
  }

  bool possuiCnh(String cnh) {
    if (cnh.isEmpty) throw Exception('CNH não pode ser vazia');
    return true;
  }
}
