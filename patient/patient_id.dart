

import '../value_object_interface.dart';

class PatientId implements IValueObject<PatientId>{

  int id;

  PatientId(this.id);


  bool equals(PatientId other) {
    //Agregar validaciones
    return this.id == other.id;  
  }


}