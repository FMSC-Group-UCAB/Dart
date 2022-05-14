import '../../interfaces/value_object_interface.dart';

class CasefileHeight implements IValueObject<CasefileHeight> {
  late final int _height;

  //Getters
  int get valueHeight => _height;

  //Constructor
  CasefileHeight(this._height);

  bool equals(CasefileHeight other) {
    //Agregar validaciones
    return this._height == other._height;
  }

  /// Aplicacion del patron factory
  /// Recibe [height] como parametro y crea una instancia de [CasefileHeight]
  static CasefileHeight create(int height) {
    return CasefileHeight(height);
  }
}
