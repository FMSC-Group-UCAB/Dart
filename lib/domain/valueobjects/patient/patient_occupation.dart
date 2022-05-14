import '../../interfaces/value_object_interface.dart';

///PatientOccupation: Es un value object utilizado para el manejo de las ocupaciones de los pacientes.
class PatientOccupation implements IValueObject<PatientOccupation>{

  String _occupation;

  PatientOccupation(this._occupation);

  // Getters
  String get valueOccupation => _occupation;

  bool equals(PatientOccupation other) {
    return this._occupation == other._occupation;  
  }

  /// Patron factory
  /// La funcion recibe [occupation] para crear una instancia del Value Object [PatientOccupation].
  static PatientOccupation create(String occupation) {
    return PatientOccupation(occupation);
  }

}