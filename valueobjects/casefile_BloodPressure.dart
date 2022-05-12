import '../interfaces/value-object.interface.dart';

class CasefileBloodPressure implements IValueObject<CasefileBloodPressure> {
  String bloodPressure;

  CasefileBloodPressure(this.bloodPressure);

  bool equals(CasefileBloodPressure other) {
    //Agregar validaciones
    return this.bloodPressure == other.bloodPressure;
  }
}
