import '../../interfaces/value_object_interface.dart';

class AppointmentFeedback implements IValueObject<AppointmentFeedback>{

  int rating;
  String comment;

  AppointmentFeedback(this.rating, this.comment);


  bool equals(AppointmentFeedback other) {
    //Agregar validaciones
    return (this.rating == other.rating) && (this.comment == other.comment);  
  }


}