import '../../interfaces/value_object_interface.dart';

class CasefileCholesterol implements IValueObject<CasefileCholesterol> {
  //Atributos
  int _cholesterol;

  //Constructor
  CasefileCholesterol(this._cholesterol);

  //Getters
  int get Cholesterol => _cholesterol;

  //Métodos
  bool equals(CasefileCholesterol other) {
    return this._cholesterol == other._cholesterol;
  }

  //Aplicación del patrón factory
  static CasefileCholesterol create(int cholesterol) {
    return CasefileCholesterol(cholesterol);
  }
}
