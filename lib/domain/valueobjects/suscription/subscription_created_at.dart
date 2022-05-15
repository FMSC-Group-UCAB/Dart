import '../../interfaces/value_object_interface.dart';

///SuscriptionCreatedAt: Value Object para las fechas de creación de las suscripciones.
class SubscriptionCreatedAt implements IValueObject<SubscriptionCreatedAt> {
  late final DateTime _createdAt;

  //Getters
  DateTime get value {
    return _createdAt;
  }

  ///Constructor de SuscriptionCreatedAt Value Object
  SubscriptionCreatedAt(DateTime createdAt) {
    //ToDo: Validaciones...
    _createdAt = createdAt;
  }

  @override
  bool equals(SubscriptionCreatedAt other) {
    return _createdAt == other._createdAt;
  }

  ///Patron Factory.
  static SubscriptionCreatedAt create(DateTime createdAt) {
    return SubscriptionCreatedAt(createdAt);
  }
}
