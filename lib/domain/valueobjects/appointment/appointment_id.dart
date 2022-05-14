import '../../interfaces/value_object_interface.dart';

///AppointmentId: Es un value object utilizado para el manejo de los ids de los citas.
class AppointmentId implements IValueObject<AppointmentId>{

  late int _id;

  AppointmentId(this._id);

  // Getters
  int get valueId => _id;

  bool equals(AppointmentId other) {
    return this._id == other._id;  
  }


  /// Patron factory
  static AppointmentId create(int id) {
    return AppointmentId(id);
  }

}