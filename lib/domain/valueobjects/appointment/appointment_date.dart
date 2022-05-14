import '../../interfaces/value_object_interface.dart';

///AppointmentDate: Es un value object utilizado para el manejo de las fechas de los citas.
class AppointmentDate implements IValueObject<AppointmentDate>{

  late final String _date;

  // Getters
  String get value => _date;


  ///Constructor de AppointmentDate Value Object
  AppointmentDate(String date){
    //Agregar validaciones
    this._date = date;
  }

  bool equals(AppointmentDate other) {
    return this._date == other._date;  
  }


  /// Patron factory
  /// La funcion recibe [date] para crear una instancia del Value Object [AppointmentDate].
  static AppointmentDate create(String date) {
    return AppointmentDate(date);
  }

}