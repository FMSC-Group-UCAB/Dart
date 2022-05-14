import '../../interfaces/value_object_interface.dart';

class CasefileWeight implements IValueObject<CasefileWeight> {
  late final int _weight;

  //Getters
  int get valueWeight => _weight;

  //Constructor
  CasefileWeight(this._weight);

  bool equals(CasefileWeight other) {
    //Agregar validaciones
    return this._weight == other._weight;
  }

  /// Aplicacion del patron factory
  /// Recibe [weight] como parametro y crea una instancia de [CasefileWeight]
  static CasefileWeight create(int weight) {
    return CasefileWeight(weight);
  }
}
