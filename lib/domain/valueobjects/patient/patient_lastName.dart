import '../../interfaces/value_object_interface.dart';

///PatientLastName: Es un value object utilizado para el manejo de los apellidos de los pacientes.
class PatientLastName implements IValueObject<PatientLastName>{

  String _lastName;

  PatientLastName(this._lastName);

  // Getters
  String get valueLastName => _lastName;

  bool equals(PatientLastName other) {
    return this._lastName == other._lastName;  
  }

  /// Patron factory
  static PatientLastName create(String lastName) {
    return PatientLastName(lastName);
  }

}