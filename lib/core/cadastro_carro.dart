
class ValidarCarroCadastrado{
  
  String carroPossuiModelo(String modelo) {
    if(modelo.isNotEmpty) throw Exception('Carro não possui um modelo');
    return modelo;
  }
    
    
}