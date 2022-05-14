import '../../interfaces/value_object_interface.dart';

class CasefileBloodPressure implements IValueObject<CasefileBloodPressure> {
  late final String _bloodPressure;

  //getter
  get valueBloodPressure => _bloodPressure;

  //constructor
  CasefileBloodPressure(this._bloodPressure);

  //Metodos de la clase

  bool equals(CasefileBloodPressure other) {
    //Agregar validaciones
    return this._bloodPressure == other._bloodPressure;
  }

  ///Aplicacion del patron factory
  /// Recibe [bloodPressure] como parametro y crea una instancia de [CasefileBloodPressure]
  static CasefileBloodPressure create(String bloodPressure) {
    return CasefileBloodPressure(bloodPressure);
  }
}
