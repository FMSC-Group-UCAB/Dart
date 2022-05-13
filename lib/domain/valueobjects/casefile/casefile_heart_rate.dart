import '../interfaces/value_object_interface.dart';

class CasefileHeartRate implements IValueObject<CasefileHeartRate> {
  int heartRate;

  CasefileHeartRate(this.heartRate);

  bool equals(CasefileHeartRate other) {
    //Agregar validaciones
    return this.heartRate == other.heartRate;
  }
}
