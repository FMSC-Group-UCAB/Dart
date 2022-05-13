import '../interfaces/value_object_interface.dart';

class CasefileId implements IValueObject<CasefileId> {
  int id;

  CasefileId(this.id);

  bool equals(CasefileId other) {
    //Agregar validaciones
    return this.id == other.id;
  }
}
