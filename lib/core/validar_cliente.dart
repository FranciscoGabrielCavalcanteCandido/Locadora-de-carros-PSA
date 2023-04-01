import 'package:locadora_de_carros_psa/core/validar_cpf.dart';
import 'package:locadora_de_carros_psa/core/validar_cnh.dart';

class ValidarCliente {
  validaCliente(String cpf, String cnh) {
    ValidarCPF().validaCpf(cpf);
    ValidarCnh().validarCnh(cnh);
  }

  possuiCnh(String cnh) {}
}
