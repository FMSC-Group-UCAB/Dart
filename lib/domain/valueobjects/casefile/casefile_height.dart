import '../../interfaces/value_object_interface.dart';

class CasefileHeight implements IValueObject<CasefileHeight> {
  int _height;

  //Constructor

  CasefileHeight(this._height);

  //Getters
  int get Height => _height;

  bool equals(CasefileHeight other) {
    //Agregar validaciones
    return this._height == other._height;
  }

  // Aplicacion del patron factory
  static CasefileHeight create(int height) {
    return CasefileHeight(height);
  }
}
