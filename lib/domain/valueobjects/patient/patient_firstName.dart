import '../../interfaces/value_object_interface.dart';

///PatientFirstName: Es un value object utilizado para el manejo de los nombres de los pacientes.
class PatientFirstName implements IValueObject<PatientFirstName>{

  late final String _firstName;

  // Getters
  String get value => _firstName;

  ///Constructor de PatientFirstName Value Object
  PatientFirstName(String firstName){
    //Agregar validaciones
    this._firstName = firstName;
  }

  
  bool equals(PatientFirstName other) {
    return this._firstName == other._firstName;  
  }

  /// Patron factory
  /// La funcion recibe [firstName] para crear una instancia del Value Object [PatientFirstName].
  static PatientFirstName create(String firstName) {
    return PatientFirstName(firstName);
  }

}