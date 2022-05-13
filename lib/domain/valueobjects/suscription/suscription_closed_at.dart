import '../../interfaces/value_object_interface.dart';

///SuscriptionClosedAt: Value Object para las fechas de cierre de las suscripciones.
class SuscriptionClosedAt implements IValueObject<SuscriptionClosedAt> {
  late final String _closedAt;

  //Getters
  String get value {
    return _closedAt;
  }

  ///Constructor de SuscriptionClosedAt Value Object
  SuscriptionClosedAt(String closedAt) {
    //ToDo: Validaciones...
    _closedAt = closedAt;
  }

  @override
  bool equals(SuscriptionClosedAt other) {
    return _closedAt == other._closedAt;
  }

  ///Patron Factory.
  static SuscriptionClosedAt create(String closedAt) {
    return SuscriptionClosedAt(closedAt);
  }
}
