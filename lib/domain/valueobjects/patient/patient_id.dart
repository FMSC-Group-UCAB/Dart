import '../../interfaces/value_object_interface.dart';

///PatientId: Es un value object utilizado para el manejo de los identificadores de los pacientes.
class PatientId implements IValueObject<PatientId>{

  late int _id;

  PatientId(this._id);

  // Getters
  int get valueId => _id;

  bool equals(PatientId other) {
    return this._id == other._id;  
  }

  /// Patron factory
  /// La funcion recibe [id] para crear una instancia del Value Object [PatientId].
  static PatientId create(int id) {
    return PatientId(id);
  }


}