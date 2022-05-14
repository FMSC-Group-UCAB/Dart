import '../enumerations/appointmentType_enum.dart';
import '../enumerations/specialty_type_enum.dart';
import '../enumerations/statusType_enum.dart';
import '../valueobjects/appointment/appointment_date.dart';
import '../valueobjects/appointment/appointment_id.dart';

class Appointment {
  AppointmentId id;
  StatusType status;
  AppointmentDate date;
  AppointmentType appointmentType;
  SpecialtyType specialtyType;

  Appointment({
    required this.id,
    required this.status,
    required this.date,
    required this.appointmentType,
    required this.specialtyType,
  });

  void reschedule(AppointmentDate newDate) {}

  void updateStatus(StatusType newStatus) {}
}
