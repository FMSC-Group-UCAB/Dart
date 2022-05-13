import '../../interfaces/value_object_interface.dart';

class SuscriptionClosedAt implements IValueObject<SuscriptionClosedAt> {
  final String _closedAt;

  String get Value {
    return _closedAt;
  }

  SuscriptionClosedAt(this._closedAt);

  @override
  bool equals(SuscriptionClosedAt other) {
    //Agregar validaciones
    return _closedAt == other._closedAt;
  }
}
