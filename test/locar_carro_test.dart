import 'package:flutter_test/flutter_test.dart';
import 'package:locadora_de_carros_psa/core/validar_carro.dart';
import 'package:locadora_de_carros_psa/model/carro.dart';

void main() {
  test("O carro está disponivel", () {
    bool disponivel = true;

    var carroDisponivel = ValidarCarro();
    expect(
        () => carroDisponivel.carroEstaDisponivel(disponivel), throwsException);
  });

  test("Placa já cadastrada", () {
    String placa = "";

    var placaCarro;
    expect(() => placaCarro.possuiuPlaca(placa), throwsException);
  });

  test('Documentação em dia', () {
    bool documentacao = true;

    var carroDocumento;
    expect(() => carroDocumento.documentacaoOk(documentacao), throwsException);
  });
}
