import '../../interfaces/value_object_interface.dart';

class CasefileHeartRate implements IValueObject<CasefileHeartRate> {
  int _heartRate;

  //Constructor

  CasefileHeartRate(this._heartRate);

  //Getters
  get HeartRate => _heartRate;

  //Metodos

  bool equals(CasefileHeartRate other) {
    //Agregar validaciones
    return this._heartRate == other._heartRate;
  }

  // Aplicacion del patron factory
  static CasefileHeartRate create(int heartRate) {
    return CasefileHeartRate(heartRate);
  }
}
