import '../../interfaces/value_object_interface.dart';

///PatientEmail: Es un value object utilizado para el manejo de los emails de los pacientes.
class PatientEmail implements IValueObject<PatientEmail>{

  late final String _email;

  // Getters
  String get value => _email;

  ///Constructor de PatientEmail Value Object
  PatientEmail(String email){
    //Agregar validaciones
    this._email = email;
  }


  bool equals(PatientEmail other) {
    return this._email == other._email;  
  }

  /// Patron factory
  /// La funcion recibe [email] para crear una instancia del Value Object [PatientEmail].
  static PatientEmail create(String email) {
    return PatientEmail(email);
  }

}