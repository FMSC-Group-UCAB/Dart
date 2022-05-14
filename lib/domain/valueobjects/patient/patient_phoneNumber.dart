import '../../interfaces/value_object_interface.dart';

///PatientPhoneNumber: Es un value object utilizado para el manejo de los telefonos de los pacientes.
class PatientPhoneNumber implements IValueObject<PatientPhoneNumber>{

  String _phoneNumber;

  PatientPhoneNumber(this._phoneNumber);

  // Getters
  String get phoneNumber => _phoneNumber;

  bool equals(PatientPhoneNumber other) {
    return this._phoneNumber == other._phoneNumber;  
  }


  /// Patron factory
  static PatientPhoneNumber create(String phoneNumber) {
    return PatientPhoneNumber(phoneNumber);
  }

}