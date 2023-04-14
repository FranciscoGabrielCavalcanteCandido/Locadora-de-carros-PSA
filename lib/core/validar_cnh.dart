class ValidarCnh {
  validarCnh(String cnh) {
    possuiCnh(cnh);
  }

  String possuiCnh(String cnh) {
    if (cnh.isNotEmpty) throw Exception('CNH não pode ser vazia');
    return cnh;
  }
}
