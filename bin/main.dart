import '../lib/domain/entities/doctor.dart';
import '../lib/domain/entities/patient.dart';
import '../lib/domain/enumerations/appointmentType_enum.dart';
import '../lib/domain/enumerations/hold_type_enum.dart';
import '../lib/domain/enumerations/specialty_type_enum.dart';
import '../lib/domain/enumerations/statusType_enum.dart';
import '../lib/domain/enumerations/suscription_cost_type_enum.dart';
import '../lib/domain/enumerations/suscription_type_enum.dart';
import '../lib/domain/observables/domain_event.dart';
import '../lib/domain/observables/observable.dart';
import '../lib/domain/observables/observer.interface.dart';
import '../lib/domain/usecases/register_patient_usecase.dart';
import '../lib/domain/usecases/register_suscription_usecase.dart';
import '../lib/domain/usecases/request_appointment_usecase.dart';
import '../lib/domain/valueobjects/appointment/appointment_date.dart';
import '../lib/domain/valueobjects/doctor/doctor_first_name.dart';
import '../lib/domain/valueobjects/doctor/doctor_id.dart';
import '../lib/domain/valueobjects/doctor/doctor_last_name.dart';
import '../lib/domain/valueobjects/doctor/doctor_location.dart';
import '../lib/domain/valueobjects/patient/patient_id.dart';
import '../lib/domain/valueobjects/patient/patient_firstName.dart';
import '../lib/domain/valueobjects/patient/patient_lastName.dart';
import '../lib/domain/valueobjects/patient/patient_birthDate.dart';
import '../lib/domain/valueobjects/patient/patient_email.dart';
import '../lib/domain/valueobjects/patient/patient_phoneNumber.dart';
import '../lib/domain/valueobjects/patient/patient_occupation.dart';
import '../lib/domain/interfaces/pay_method_interface.dart';
import '../lib/domain/valueobjects/suscription/subscription_closed_at.dart';
import '../lib/domain/valueobjects/suscription/subscription_created_at.dart';
import '../lib/domain/valueobjects/suscription/subscription_id.dart';
import '../lib/domain/valueobjects/suscription/subscription_paid_at.dart';

///Clase prueba para poder instanciar la interfaz de metodos de pago
class paypal implements IPayMethod {
  @override
  Future<bool> pay(double cost) async {
    print('Pago exitoso');
    return true;
  }
}

class NuevoObservador extends Observer {
  raise(List<DomainEvent> events) {
    events.forEach((event) => print(event.toJson()));
  }
}

void main(List<String> arguments) {
  print('Main');

  final Observer observer = NuevoObservador();

  final Doctor doctor = Doctor.create(
      DoctorId.create(1),
      DoctorFirstName.create('María'),
      DoctorLastName.create('Pérez'),
      [SpecialtyType.CARDIOLOGY, SpecialtyType.OPHTALMOLOGY],
      DoctorLocation('1', '-1'),
      HoldType.NONE);

  print(doctor.toString());

  final Patient patient = Patient.create(
      PatientId.create(1),
      PatientFirstName.create('Nicole'),
      PatientLastName.create('Marcano'),
      PatientBirthDate.create(DateTime.now()),
      PatientEmail.create('nicole@gmail.com'),
      PatientPhoneNumber.create('+58 (123)153-1532'),
      PatientOccupation.create('Estudiante'),
      HoldType.NONE);

  DomainEvent("Nombre Cambiado", {});

// Invocacion del Caso de Uso registrar paciente

  RegisterPatientUseCase registerPatient = RegisterPatientUseCase();
  // suscribiendo el cu al observador
  registerPatient.add(observer);

  registerPatient.registerPatient(
      PatientId(1),
      PatientFirstName('Froilan'),
      PatientLastName('Roa'),
      PatientBirthDate(DateTime.now()),
      PatientEmail('email@example.com'),
      PatientPhoneNumber('+58 0000000000'),
      PatientOccupation('Student'),
      HoldType.NONE);

  print('------------------------------------------------------------------');
  //Caso de uso para solicitar una cita

  final RequestAppointmentUseCase requestAppointment =
      RequestAppointmentUseCase();
// suscribiendo el cu al observador
  requestAppointment.add(observer);

  requestAppointment.requestAppointment(
      patient,
      doctor,
      AppointmentDate.create(new DateTime(2023, 1, 1)),
      AppointmentType.VIRTUAL,
      SpecialtyType.OPHTALMOLOGY);

  print('------------------------------------------------------------------');

  ///Crear un paciente prueba
  final patientTest = Patient.create(
      PatientId(1),
      PatientFirstName('Froilan'),
      PatientLastName('Roa'),
      PatientBirthDate(DateTime.utc(1989, 1, 1)),
      PatientEmail('email@email.com'),
      PatientPhoneNumber('+58 0000000000'),
      PatientOccupation('Student'),
      HoldType.NONE);

  // Invocacion del Caso de Uso registrar suscripcion
  final RegisterSuscriptionUsecase registersubscription =
      RegisterSuscriptionUsecase(paypal());

// suscribiendo el cu al observador
  registersubscription.add(observer);

  registersubscription.registerSuscription(
      SubscriptionId(1),
      patientTest,
      SubscriptionCreatedAt(DateTime.now()),
      SubscriptionPaidAt(DateTime.now()),
      SubscriptionClosedAt(DateTime.now()),
      SuscriptionCostType.BASIC,
      SuscriptionType.MONTHLY);
}
