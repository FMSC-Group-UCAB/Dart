import '../lib/domain/interfaces/pay_method_interface.dart';

class Paypal implements IPayMethod {
  @override
  Future<bool> pay(double cost) async {
    print('Pago exitoso');
    return true;
  }
}
