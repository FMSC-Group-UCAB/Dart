import '../interfaces/value_object_interface.dart';

class CasefileHeight implements IValueObject<CasefileHeight> {
  int height;

  CasefileHeight(this.height);

  bool equals(CasefileHeight other) {
    //Agregar validaciones
    return this.height == other.height;
  }
}
