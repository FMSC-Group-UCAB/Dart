import '../../interfaces/value_object_interface.dart';

///AppointmentDate: Es un value object utilizado para el manejo de las fechas de los citas.
class AppointmentDate implements IValueObject<AppointmentDate>{

  String _date;

  AppointmentDate(this._date);

  // Getters
  String get valueDate => _date;

  bool equals(AppointmentDate other) {
    //Agregar validaciones
    return this._date == other._date;  
  }


  /// Patron factory
  /// La funcion recibe [date] para crear una instancia del Value Object [AppointmentDate].
  static AppointmentDate create(String date) {
    return AppointmentDate(date);
  }

}