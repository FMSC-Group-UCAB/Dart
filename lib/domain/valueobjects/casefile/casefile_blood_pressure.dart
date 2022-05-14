import '../../interfaces/value_object_interface.dart';

class CasefileBloodPressure implements IValueObject<CasefileBloodPressure> {
  String _bloodPressure;

  //constructor

  CasefileBloodPressure(this._bloodPressure);

  //getter
  get BloodPressure => _bloodPressure;

  //Metodos de la clase

  bool equals(CasefileBloodPressure other) {
    //Agregar validaciones
    return this._bloodPressure == other._bloodPressure;
  }

  //Aplicacion del patron factory

  static CasefileBloodPressure create(String bloodPressure) {
    return CasefileBloodPressure(bloodPressure);
  }
}
