import '../../interfaces/value_object_interface.dart';

class PatientPhoneNumber implements IValueObject<PatientPhoneNumber>{

  String phoneNumber;

  PatientPhoneNumber(this.phoneNumber);


  bool equals(PatientPhoneNumber other) {
    //Agregar validaciones
    return this.phoneNumber == other.phoneNumber;  
  }


}