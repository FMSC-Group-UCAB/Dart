import '../value_object_interface.dart';

class PatientEmail implements IValueObject<PatientEmail>{

  String email;

  PatientEmail(this.email);


  bool equals(PatientEmail other) {
    //Agregar validaciones
    return this.email == other.email;  
  }


}