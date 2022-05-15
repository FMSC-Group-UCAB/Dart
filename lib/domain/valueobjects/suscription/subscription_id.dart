import '../../interfaces/value_object_interface.dart';

///SuscriptionId: Es el Value Object del identificador de las suscripciones.
class SubscriptionId implements IValueObject<SubscriptionId> {
  late final int _id;

  //Getters
  int get value {
    return _id;
  }

  ///Constructor de SuscriptionId Value Object
  SubscriptionId(int id) {
    //ToDo: Validaciones...
    _id = id;
  }

  @override
  bool equals(SubscriptionId other) {
    return _id == other._id;
  }

  ///Patron Factory.
  static SubscriptionId create(int id) {
    return SubscriptionId(id);
  }
}
