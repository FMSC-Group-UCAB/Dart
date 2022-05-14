import '../../interfaces/value_object_interface.dart';

///PatientId: Es un value object utilizado para el manejo de los identificadores de los pacientes.
class PatientId implements IValueObject<PatientId>{

  late final int _id;

  // Getters
  int get value => _id;


  ///Constructor de PatientId Value Object
  PatientId(int id){
    //Agregar validaciones
    this._id = id;
  }


  bool equals(PatientId other) {
    return this._id == other._id;  
  }

  /// Patron factory
  /// La funcion recibe [id] para crear una instancia del Value Object [PatientId].
  static PatientId create(int id) {
    return PatientId(id);
  }


}