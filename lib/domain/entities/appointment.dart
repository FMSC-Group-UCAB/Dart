import '../enumerations/appointmentType_enum.dart';
import '../enumerations/specialty_type_enum.dart';
import '../enumerations/statusType_enum.dart';
import '../valueobjects/appointment/appointment_date.dart';
import '../valueobjects/appointment/appointment_id.dart';

///Appointment: Es una clase concreta utilizada para el manejo de las citas.
class Appointment {
  late final AppointmentId _id;
  late StatusType _status;
  late AppointmentDate _date;
  late AppointmentType _appointmentType;
  late SpecialtyType _specialtyType;


  //Getters
  AppointmentId get id => _id;
  StatusType get status => _status;
  AppointmentDate get date => _date;
  AppointmentType get appointmentType => _appointmentType;
  SpecialtyType get specialtyType => _specialtyType;

  //Setters
  set status(StatusType status) => _status = status;
  set date(AppointmentDate date) => _date = date;
  set appointmentType(AppointmentType appointmentType) => _appointmentType = appointmentType;
  set specialtyType(SpecialtyType specialtyType) => _specialtyType = specialtyType;

  //Constructor
  Appointment(
    AppointmentId id,
    StatusType status,
    AppointmentDate date,
    AppointmentType appointmentType,
    SpecialtyType specialtyType) {
    _id = id;
    _status = status;
    _date = date;
    _appointmentType = appointmentType;
    _specialtyType = specialtyType;
  }


  ///Patron Factory.
  static Appointment create(
      AppointmentId id,
      StatusType status,
      AppointmentDate date,
      AppointmentType appointmentType,
      SpecialtyType specialtyType) {
    return Appointment(id, status, date, appointmentType, specialtyType);
  }


  //Métodos
  void reschedule(AppointmentDate newDate) {}

  void updateStatus(StatusType newStatus) {}
}