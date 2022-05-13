import '../../interfaces/value_object_interface.dart';

class AppointmentId implements IValueObject<AppointmentId>{

  int id;

  AppointmentId(this.id);


  bool equals(AppointmentId other) {
    //Agregar validaciones
    return this.id == other.id;  
  }


}