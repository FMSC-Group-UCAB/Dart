import '../../interfaces/value_object_interface.dart';

///PatientLastName: Es un value object utilizado para el manejo de los apellidos de los pacientes.
class PatientLastName implements IValueObject<PatientLastName>{

  late final String _lastName;

  // Getters
  String get value => _lastName;


  ///Constructor de PatientLastName Value Object
  PatientLastName(String lastName){
    //Agregar validaciones
    this._lastName = lastName;
  }


  bool equals(PatientLastName other) {
    return this._lastName == other._lastName;  
  }

  /// Patron factory
  /// La funcion recibe [lastName] para crear una instancia del Value Object [PatientLastName].
  static PatientLastName create(String lastName) {
    return PatientLastName(lastName);
  }

}