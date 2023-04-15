 import 'package:flutter_test/flutter_test.dart';
import 'package:locadora_de_carros_psa/core/cadastro_carro.dart';

void main() {
  test("Carro possui modelo", () {
    String modelo = "Camaro";

    var modeloCarro = ValidarCarroCadastrado();
    expect(() => modeloCarro.carroPossuiModelo(modelo), throwsException);
  });

  
}