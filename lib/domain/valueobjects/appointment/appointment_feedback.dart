import '../../interfaces/value_object_interface.dart';

///AppointmentFeedback: Es un value object utilizado para el manejo de los comentarios y ratings de las citas.
class AppointmentFeedback implements IValueObject<AppointmentFeedback>{

  late final int _rating;
  late final String _comment;

  // Getters
  int get valueRating => _rating;
  String get valueComment => _comment;


  ///Constructor de AppointmentFeedback Value Object
  AppointmentFeedback(int rating, String comment){
    //Agregar validaciones
    this._rating = rating;
    this._comment = comment;
  }


  bool equals(AppointmentFeedback other) {
    return (this._rating == other._rating) && (this._comment == other._comment);  
  }


  /// Patron factory
  /// La funcion recibe [rating] y [comment] para crear una instancia del Value Object [AppointmentFeedback].
  static AppointmentFeedback create(int rating, String comment) {
    return AppointmentFeedback(rating, comment);
  }
}