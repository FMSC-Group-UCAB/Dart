import '../../interfaces/value_object_interface.dart';

///AppointmentFeedback: Es un value object utilizado para el manejo de los comentarios y ratings de las citas.
class AppointmentFeedback implements IValueObject<AppointmentFeedback>{

  int _rating;
  String _comment;

  AppointmentFeedback(this._rating, this._comment);

  // Getters
  int get valueRating => _rating;
  String get valueComment => _comment;

  bool equals(AppointmentFeedback other) {
    return (this._rating == other._rating) && (this._comment == other._comment);  
  }


  /// Patron factory
  static AppointmentFeedback create(int rating, String comment) {
    return AppointmentFeedback(rating, comment);
  }
}