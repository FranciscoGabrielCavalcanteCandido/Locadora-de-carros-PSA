import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Nome é vazio', () {
    String nome = "";
    var validarCliente = ValidarCliente();
    expect(() => validarCliente.nomeEhVazio(nome), throwsException);
  });

  test('Telefone está vazio', () {});
}
