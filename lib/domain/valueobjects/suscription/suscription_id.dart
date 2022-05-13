import '../../interfaces/value_object_interface.dart';

///SuscriptionId: Es el Value Object del identificador de las suscripciones.
class SuscriptionId implements IValueObject<SuscriptionId> {
  late final int _id;

  //Getters
  int get value {
    return _id;
  }

  ///Constructor de SuscriptionId Value Object
  SuscriptionId(int id) {
    //ToDo: Validaciones...
    _id = id;
  }

  @override
  bool equals(SuscriptionId other) {
    return _id == other._id;
  }

  ///Patron Factory.
  static SuscriptionId create(int id) {
    return SuscriptionId(id);
  }
}
