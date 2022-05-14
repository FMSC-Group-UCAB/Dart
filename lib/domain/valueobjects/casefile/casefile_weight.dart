import '../../interfaces/value_object_interface.dart';

class CasefileWeight implements IValueObject<CasefileWeight> {
  int _weight;

  //Constructor

  CasefileWeight(this._weight);

  //Getters

  int get Weight => _weight;

  bool equals(CasefileWeight other) {
    //Agregar validaciones
    return this._weight == other._weight;
  }

  // Aplicacion del patron factory
  static CasefileWeight create(int weight) {
    return CasefileWeight(weight);
  }
}
