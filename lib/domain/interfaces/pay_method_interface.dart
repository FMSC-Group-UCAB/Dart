///PayMethod: Es una interfaz utilizada para implementar métodos de pago
abstract class IPayMethod {

  ///Permite realizar un pago a traves de un método especificado.
  ///[amount] es el monto a pagar.
  Future<bool> getPayMethod(int amount) async {
    return true; //TODO: Implementar
  }

}