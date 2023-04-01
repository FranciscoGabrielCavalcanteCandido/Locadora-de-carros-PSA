import 'package:flutter_test/flutter_test.dart';
import 'package:locadora_de_carros_psa/core/validar_cliente.dart';
import 'package:locadora_de_carros_psa/core/validar_cpf.dart';

void main() {
  test('Cliente possuiu cadastro', () {
    String cpf = "";
    var validarCliente = ValidarCPF();
    expect(() => validarCliente.validaCpf(cpf), throwsException);
  });

  test('Cliente possuiu CNH', () {
    String cnh = "";
    var validarCliente = ValidarCliente();
    expect(() => validarCliente.possuiCnh(cnh), throwsException);
  });
}
