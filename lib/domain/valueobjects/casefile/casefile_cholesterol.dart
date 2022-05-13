import '../../interfaces/value_object_interface.dart';

class CasefileCholesterol implements IValueObject<CasefileCholesterol> {
  //Atributos
  int Cholesterol;

  //Constructor
  CasefileCholesterol(this.Cholesterol);

  //Métodos
  bool equals(CasefileCholesterol other) {
    return this.Cholesterol == other.Cholesterol;
  }

  getCholesterol() => this.Cholesterol;
}
