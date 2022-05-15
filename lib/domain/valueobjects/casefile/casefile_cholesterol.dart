import '../../interfaces/value_object_interface.dart';
import './casefile_range.dart';

class CasefileCholesterol implements IValueObject<CasefileCholesterol> {
  //Atributos
  late final int _cholesterol;
  late final CaseFileRange _range;

  //Getters
  int get valueCholesterol => _cholesterol;
  CaseFileRange get range => _range;

  //Constructor
  CasefileCholesterol(this._cholesterol, this._range);

  //Métodos
  bool equals(CasefileCholesterol other) {
    return this._cholesterol == other._cholesterol;
  }

  ///Aplicación del patrón factory
  /// Recibe [cholesterol] como parametro y crea una instancia de [CasefileCholesterol]
  static CasefileCholesterol create(int cholesterol, CaseFileRange range) {
    return CasefileCholesterol(cholesterol, range);
  }
}
