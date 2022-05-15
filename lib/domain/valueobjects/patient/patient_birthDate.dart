import '../../interfaces/value_object_interface.dart';

///PatientBirthDate: Es un value object utilizado para el manejo de las fechas de nacimiento de los pacientes.
class PatientBirthDate implements IValueObject<PatientBirthDate>{

  late final DateTime _birthDate;

  // Getters
  DateTime get value => _birthDate;

  ///Constructor de PatientBirthDate Value Object
  PatientBirthDate(DateTime birthDate){
    //Agregar validaciones
    this._birthDate = birthDate;
  }


  bool equals(PatientBirthDate other) {
    return this._birthDate == other._birthDate;  
  }

  /// Patron factory
  /// La funcion recibe [birthDate] para crear una instancia del Value Object [PatientBirthDate].
  static PatientBirthDate create(DateTime birthDate) {
    return PatientBirthDate(birthDate);
  }

}