import '../interfaces/value_object_interface.dart';

class CasefileCholesterol implements IValueObject<CasefileCholesterol> {
  //Atributos
  int value;

  //Constructor
  CasefileCholesterol(this.value);

  //Métodos
  bool equals(CasefileCholesterol other) {
    return this.value == other.value;
  }
}
