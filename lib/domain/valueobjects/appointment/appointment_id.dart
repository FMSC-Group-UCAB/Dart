import '../../interfaces/value_object_interface.dart';

///AppointmentId: Es un value object utilizado para el manejo de los ids de los citas.
class AppointmentId implements IValueObject<AppointmentId>{

  late int _id;

  // Getters
  int get value => _id;

  ///Constructor de AppointmentId Value Object
  AppointmentId(int id){
    //Agregar validaciones
    this._id = id;
  }


  bool equals(AppointmentId other) {
    return this._id == other._id;  
  }


  /// Patron factory
  /// La funcion recibe [id] para crear una instancia del Value Object [AppointmentId].
  static AppointmentId create(int id) {
    return AppointmentId(id);
  }

}