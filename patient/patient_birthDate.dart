import '../value_object_interface.dart';

class PatientBirthDate implements IValueObject<PatientBirthDate>{

  String birthDAte;

  PatientBirthDate(this.birthDAte);


  bool equals(PatientBirthDate other) {
    //Agregar validaciones y parsear fecha
    return this.birthDAte == other.birthDAte;  
  }


}