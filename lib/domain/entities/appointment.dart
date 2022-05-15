import '../enumerations/appointmentType_enum.dart';
import '../enumerations/specialty_type_enum.dart';
import '../enumerations/statusType_enum.dart';
import '../valueobjects/appointment/appointment_date.dart';
import '../valueobjects/appointment/appointment_id.dart';
import 'doctor.dart';
import 'patient.dart';

///Appointment: Es una clase concreta utilizada para el manejo de las citas.
class Appointment {
  late final AppointmentId _id;
  late final Patient _patient;
  late final Doctor _doctor;
  late StatusType _status;
  late AppointmentDate _date;
  late AppointmentType _appointmentType;
  late SpecialtyType _specialtyType;

  //Getters
  AppointmentId get id => _id;
  Patient get patient => _patient;
  Doctor get doctor => _doctor;
  StatusType get status => _status;
  AppointmentDate get date => _date;
  AppointmentType get appointmentType => _appointmentType;
  SpecialtyType get specialtyType => _specialtyType;

  //Constructor
  Appointment(
      AppointmentId id,
      Patient patient,
      Doctor doctor,
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
  ///La funcion recibe [id], [status], [date], [appointmentType], [specialtyType]
  ///para crear una instancia de la clase [Appointment].
  static Appointment create(
      AppointmentId id,
      Patient patient,
      Doctor doctor,
      StatusType status,
      AppointmentDate date,
      AppointmentType appointmentType,
      SpecialtyType specialtyType) {
    return Appointment(
        id, patient, doctor, status, date, appointmentType, specialtyType);
  }

  ///Métodos de la clase.

  ///Esta función permite actualizar los datos de la cita, los cuales son:
  /// [status], [date], [appointmentType], [specialtyType]
  void update(StatusType status, AppointmentDate date,
      AppointmentType appointmentType, SpecialtyType specialtyType) {
    _status = status;
    _date = date;
    _appointmentType = appointmentType;
    _specialtyType = specialtyType;

    //TODO: Agregar las validaciones de los campos.
  }
}
