import '../../interfaces/value_object_interface.dart';

///PatientPhoneNumber: Es un value object utilizado para el manejo de los telefonos de los pacientes.
class PatientPhoneNumber implements IValueObject<PatientPhoneNumber>{

  late final String _phoneNumber;

  // Getters
  String get value => _phoneNumber;


  ///Constructor de PatientPhoneNumber Value Object
  PatientPhoneNumber(String phoneNumber){
    //Agregar validaciones
    this._phoneNumber = phoneNumber;
  }


  bool equals(PatientPhoneNumber other) {
    return this._phoneNumber == other._phoneNumber;  
  }


  /// Patron factory
  /// La funcion recibe [phoneNumber] para crear una instancia del Value Object [PatientPhoneNumber].
  static PatientPhoneNumber create(String phoneNumber) {
    return PatientPhoneNumber(phoneNumber);
  }

}