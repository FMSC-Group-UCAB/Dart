import '../../interfaces/value_object_interface.dart';

class CaseFileRange implements IValueObject<CaseFileRange>{

  late final int _min;
  late final int _max;


  //getter
  int get min => _min;
  int get max => _max;

  //Constructor
  CaseFileRange(this._min, this._max);

  //Metodos
  bool equals(CaseFileRange other) {
    //Agregar validaciones
    return this._min == other._min && this._max == other._max;
  }

  /// Aplicacion del patron factory
  /// Recibe [min] y [max] como parametros y crea una instancia de [CaseFileRange]
  static CaseFileRange create(int min, int max) {
    return CaseFileRange(min, max);
  }
  
}