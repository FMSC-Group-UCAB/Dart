import '../../interfaces/value_object_interface.dart';

class PatientFirstName implements IValueObject<PatientFirstName>{

  String firstName;

  PatientFirstName(this.firstName);


  bool equals(PatientFirstName other) {
    //Agregar validaciones
    return this.firstName == other.firstName;  
  }


}