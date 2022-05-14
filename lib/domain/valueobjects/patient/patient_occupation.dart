import '../../interfaces/value_object_interface.dart';

///PatientOccupation: Es un value object utilizado para el manejo de las ocupaciones de los pacientes.
class PatientOccupation implements IValueObject<PatientOccupation>{

  String _occupation;

  PatientOccupation(this._occupation);

  // Getters
  String get occupation => _occupation;

  bool equals(PatientOccupation other) {
    return this._occupation == other._occupation;  
  }

  /// Patron factory
  static PatientOccupation create(String occupation) {
    return PatientOccupation(occupation);
  }

}