import '../enumerations/appointmentType_enum.dart';
import '../enumerations/statusType_enum.dart';
import '../valueobjects/appointment/appointment_date.dart';
import '../valueobjects/appointment/appointment_id.dart';

class Appointment {
  AppointmentId id;
  StatusType status;
  AppointmentDate date;
  AppointmentType appointmentType;

  Appointment({
    required this.id,
    required this.status,
    required this.date,
    required this.appointmentType,
  });

  void reschedule(AppointmentDate newDate) {}

  void updateStatus(StatusType newStatus) {}
}
