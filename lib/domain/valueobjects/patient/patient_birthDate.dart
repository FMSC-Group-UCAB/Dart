import '../../interfaces/value_object_interface.dart';

///PatientBirthDate: Es un value object utilizado para el manejo de las fechas de nacimiento de los pacientes.
class PatientBirthDate implements IValueObject<PatientBirthDate>{

  String _birthDAte;

  PatientBirthDate(this._birthDAte);

  // Getters
  String get valueBirthDAte => _birthDAte;

  bool equals(PatientBirthDate other) {
    return this._birthDAte == other._birthDAte;  
  }

  /// Patron factory
  static PatientBirthDate create(String birthDate) {
    return PatientBirthDate(birthDate);
  }

}