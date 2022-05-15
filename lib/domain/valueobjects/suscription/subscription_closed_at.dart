import '../../interfaces/value_object_interface.dart';

///SuscriptionClosedAt: Value Object para las fechas de cierre de las suscripciones.
class SubscriptionClosedAt implements IValueObject<SubscriptionClosedAt> {
  late final DateTime _closedAt;

  //Getters
  DateTime get value {
    return _closedAt;
  }

  ///Constructor de SuscriptionClosedAt Value Object
  SubscriptionClosedAt(DateTime closedAt) {
    //ToDo: Validaciones...
    _closedAt = closedAt;
  }

  @override
  bool equals(SubscriptionClosedAt other) {
    return _closedAt == other._closedAt;
  }

  ///Patron Factory.
  static SubscriptionClosedAt create(DateTime closedAt) {
    return SubscriptionClosedAt(closedAt);
  }
}
