import '../../interfaces/value_object_interface.dart';

class PatientLastName implements IValueObject<PatientLastName>{

  String lastName;

  PatientLastName(this.lastName);


  bool equals(PatientLastName other) {
    //Agregar validaciones
    return this.lastName == other.lastName;  
  }


}