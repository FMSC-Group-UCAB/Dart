import '../../interfaces/value_object_interface.dart';

///PatientEmail: Es un value object utilizado para el manejo de los emails de los pacientes.
class PatientEmail implements IValueObject<PatientEmail>{

  String _email;

  PatientEmail(this._email);

  // Getters
  String get valueEmail => _email;

  bool equals(PatientEmail other) {
    return this._email == other._email;  
  }

  /// Patron factory
  static PatientEmail create(String email) {
    return PatientEmail(email);
  }

}