import '../../interfaces/value_object_interface.dart';

class PatientOccupation implements IValueObject<PatientOccupation>{

  String occupation;

  PatientOccupation(this.occupation);


  bool equals(PatientOccupation other) {
    //Agregar validaciones
    return this.occupation == other.occupation;  
  }


}