import '../../interfaces/value_object_interface.dart';

class SuscriptionCreatedAt implements IValueObject<SuscriptionCreatedAt> {
  final String _createdAt;

  String get Value {
    return _createdAt;
  }

  SuscriptionCreatedAt(this._createdAt);

  @override
  bool equals(SuscriptionCreatedAt other) {
    //Agregar validaciones
    return _createdAt == other._createdAt;
  }
}
