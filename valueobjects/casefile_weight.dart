import '../interfaces/value-object.interface.dart';

class CasefileWeight implements IValueObject<CasefileWeight> {
  int weight;

  CasefileWeight(this.weight);

  bool equals(CasefileWeight other) {
    //Agregar validaciones
    return this.weight == other.weight;
  }
}
