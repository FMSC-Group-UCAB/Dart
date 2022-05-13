import '../../interfaces/value_object_interface.dart';

class CasefileBloodPressure implements IValueObject<CasefileBloodPressure> {
  String bloodPressure;

  CasefileBloodPressure(this.bloodPressure);

  bool equals(CasefileBloodPressure other) {
    //Agregar validaciones
    return this.bloodPressure == other.bloodPressure;
  }

  getBloodPressure() => this.bloodPressure;
}
