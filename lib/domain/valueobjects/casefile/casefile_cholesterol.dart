import '../../interfaces/value_object_interface.dart';

class CasefileCholesterol implements IValueObject<CasefileCholesterol> {
  //Atributos
  late final int _cholesterol;

  //Getters
  int get valueCholesterol => _cholesterol;

  //Constructor
  CasefileCholesterol(this._cholesterol);

  //Métodos
  bool equals(CasefileCholesterol other) {
    return this._cholesterol == other._cholesterol;
  }

  ///Aplicación del patrón factory
  /// Recibe [cholesterol] como parametro y crea una instancia de [CasefileCholesterol]
  static CasefileCholesterol create(int cholesterol) {
    return CasefileCholesterol(cholesterol);
  }
}
