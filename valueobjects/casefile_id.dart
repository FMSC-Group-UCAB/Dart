import '../interfaces/value-object.interface.dart';

class CasefileId implements IValueObject<CasefileId> {
  int id;

  CasefileId(this.id);

  bool equals(CasefileId other) {
    //Agregar validaciones
    return this.id == other.id;
  }
}
