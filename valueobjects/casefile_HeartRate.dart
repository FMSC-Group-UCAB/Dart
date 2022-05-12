import '../interfaces/value-object.interface.dart';

class CasefileHeartRate implements IValueObject<CasefileHeartRate> {
  int heartRate;

  CasefileHeartRate(this.heartRate);

  bool equals(CasefileHeartRate other) {
    //Agregar validaciones
    return this.heartRate == other.heartRate;
  }
}
