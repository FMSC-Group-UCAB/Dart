import '../../interfaces/value_object_interface.dart';

///SuscriptionCreatedAt: Value Object para las fechas de creación de las suscripciones.
class SuscriptionCreatedAt implements IValueObject<SuscriptionCreatedAt> {
  late final String _createdAt;

  //Getters
  String get value {
    return _createdAt;
  }

  ///Constructor de SuscriptionCreatedAt Value Object
  SuscriptionCreatedAt(String createdAt) {
    //ToDo: Validaciones...
    _createdAt = createdAt;
  }

  @override
  bool equals(SuscriptionCreatedAt other) {
    return _createdAt == other._createdAt;
  }

  ///Patron Factory.
  static SuscriptionCreatedAt create(String createdAt) {
    return SuscriptionCreatedAt(createdAt);
  }
}
