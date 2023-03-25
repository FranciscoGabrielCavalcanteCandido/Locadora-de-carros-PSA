import 'package:flutter_test/flutter_test.dart';
import 'package:locadora_de_carros_psa/controller/validar_cpf.dart';

void main() {
  test('Validar se o CPF é vazio', () {
    String cpf = "";
    var validarCpf = ValidarCPF();

    expect(() => validarCpf.ehVazio(cpf), throwsException);
  });

  test('Validar tamanho do CPF, possui 14 caracteres', () {
    String cpf = "11111111111111";

    var validarCpf = ValidarCPF();
    expect(validarCpf.validarQuantidadeCaractere(cpf), true);

    cpf = '111';
    expect(() => validarCpf.validarQuantidadeCaractere(cpf), throwsException);
  });

  test('CPF deve possuir formato correto', () {
    String cpf = '111.111.111.111-11';

    var validarCpf = ValidarCPF();
    expect(validarCpf.validaFormato(cpf), true);

    cpf = '111';
    expect(() => validarCpf.validaFormato(cpf), throwsException);
  });

  test('CPF deve possuir 9 numeros', () {
    String cpf = '123.456.789-00';

    var validarCpf = ValidarCPF();
    List<int> listaNumerosCPF = validarCpf.gerarListaNumero(cpf);

    expect(listaNumerosCPF.length, 9);
  });

  test('Deve calcular o primeiro digito', () {
    String cpf = '123.456.789-00';

    var validarCpf = ValidarCPF();

    expect(validarCpf.cauculaPrimeiroDigito(cpf), 0);
  });

  test('Deve calcular o segundo digito', () {
    String cpf = '123.456.789-00';

    var validarCpf = ValidarCPF();

    expect(validarCpf.cauculaSegundoDigito(cpf), 0);
  });

   test('Deve validar os digitos', () {
    String cpf = '123.456.789-00';

    var validarCpf = ValidarCPF();

    expect(validarCpf.validarDigitos(cpf), true);
  });
  
}
