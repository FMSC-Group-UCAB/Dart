import '../../interfaces/value_object_interface.dart';

class CasefileHeartRate implements IValueObject<CasefileHeartRate> {
  late final int _heartRate;

  //Getters
  get valueHeartRate => _heartRate;

  //Constructor
  CasefileHeartRate(this._heartRate);

  //Metodos
  bool equals(CasefileHeartRate other) {
    //Agregar validaciones
    return this._heartRate == other._heartRate;
  }

  /// Aplicacion del patron factory
  /// Recibe [heartRate] como parametro y crea una instancia de [CasefileHeartRate]
  static CasefileHeartRate create(int heartRate) {
    return CasefileHeartRate(heartRate);
  }
}
