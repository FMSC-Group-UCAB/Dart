import '../entities/appointment.dart';
import '../entities/doctor.dart';
import '../entities/patient.dart';
import '../enumerations/appointmentType_enum.dart';
import '../enumerations/hold_type_enum.dart';
import '../enumerations/specialty_type_enum.dart';
import '../enumerations/statusType_enum.dart';
import '../observables/domain_event.dart';
import '../observables/observable.dart';
import '../valueobjects/appointment/appointment_date.dart';
import '../valueobjects/appointment/appointment_id.dart';

///RequestAppointmentUseCase: Clase que representa el caso de uso de solicitar una cita.
class RequestAppointmentUseCase extends Observable {
  late List<DomainEvent> events = [];
  late Appointment appointment;


  RequestAppointmentUseCase() : super();

  ///requestAppointment: Metodo que solicita una cita.
  ///Recibe [patient], [doctor], [status], [date], [appointmentType], [specialtyType]
  ///para crear una instancia de la clase [Appointment].
  
  requestAppointment(Patient patient,Doctor doctor,AppointmentDate date,
  AppointmentType appointmentType,SpecialtyType specialtyType) {
    
    //Si el paciente tiene un hold por mal uso del sistema.
    if(patient.holdType == HoldType.BADUSE || doctor.holdType == HoldType.BADUSE){
      throw Exception('El sistema está bloqueado para el paciente o para el doctor por el mal uso del mismo.');
    }

    //Si el paciente tiene un hold por no tener suscripción activa.
    if(patient.holdType == HoldType.EXPIREDSUBSCRIPTION){
      throw Exception('No se puede solicitar una cita sin pagar la suscripción.');
    }

    //Si el paciente no tiene un hold, se crea la cita.
    this.appointment = Appointment.create(
        AppointmentId.create(1),
        patient,
        doctor,
        StatusType.PENDING,
        date,
        appointmentType,
        specialtyType);

    // Aqui es donde se almacena la informacion de la cita en el UserRepositoy
    print('El paciente ${patient.firstName.value} solicitó exitosamente una cita de ${specialtyType.toString()} con el doctor ${doctor.firstName.value} para el día ${date.value}');

    // el owner deberia ser el patient que registra la solicitud de la cita, nos lo dara el framework mas tarde.
    events.add(DomainEvent('Solicitud de Cita', {
      'owner': patient.firstName.value + ' ' + patient.lastName.value,
      'doctor': doctor.firstName.value + ' ' + doctor.lastName.value,
      }));

    // Notificando a los observers
    notifyAll(events);
  }


}
