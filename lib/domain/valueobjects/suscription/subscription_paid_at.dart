import '../../interfaces/value_object_interface.dart';

///SuscriptionPaidAt: Value Object para las fechas de pago de las suscripciones.
class SubscriptionPaidAt implements IValueObject<SubscriptionPaidAt> {
  late final DateTime _paidAt;

  //Getters
  DateTime get value {
    return _paidAt;
  }

  ///Constructor de SuscriptionPaidAt Value Object
  SubscriptionPaidAt(DateTime paidAt) {
    //ToDo: Validaciones...
    _paidAt = paidAt;
  }

  @override
  bool equals(SubscriptionPaidAt other) {
    return _paidAt == other._paidAt;
  }

  ///Patron Factory.
  static SubscriptionPaidAt create(DateTime paidAt) {
    return SubscriptionPaidAt(paidAt);
  }
}
