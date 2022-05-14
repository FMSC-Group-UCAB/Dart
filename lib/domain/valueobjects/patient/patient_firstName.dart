import '../../interfaces/value_object_interface.dart';

///PatientFirstName: Es un value object utilizado para el manejo de los nombres de los pacientes.
class PatientFirstName implements IValueObject<PatientFirstName>{

  String _firstName;

  PatientFirstName(this._firstName);

  // Getters
  String get firstName => _firstName;

  bool equals(PatientFirstName other) {
    return this._firstName == other._firstName;  
  }

  /// Patron factory
  static PatientFirstName create(String firstName) {
    return PatientFirstName(firstName);
  }

}