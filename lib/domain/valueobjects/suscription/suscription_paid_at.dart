import '../../interfaces/value_object_interface.dart';

///SuscriptionPaidAt: Value Object para las fechas de pago de las suscripciones.
class SuscriptionPaidAt implements IValueObject<SuscriptionPaidAt> {
  late final String _paidAt;

  //Getters
  String get value {
    return _paidAt;
  }

  ///Constructor de SuscriptionPaidAt Value Object
  SuscriptionPaidAt(String paidAt) {
    //ToDo: Validaciones...
    _paidAt = paidAt;
  }

  @override
  bool equals(SuscriptionPaidAt other) {
    return _paidAt == other._paidAt;
  }

  ///Patron Factory.
  static SuscriptionPaidAt create(String paidAt) {
    return SuscriptionPaidAt(paidAt);
  }
}
