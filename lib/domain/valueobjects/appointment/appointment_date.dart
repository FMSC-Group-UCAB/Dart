import '../../interfaces/value_object_interface.dart';

class AppointmentDate implements IValueObject<AppointmentDate>{

  String date;

  AppointmentDate(this.date);


  bool equals(AppointmentDate other) {
    //Agregar validaciones
    return this.date == other.date;  
  }


}