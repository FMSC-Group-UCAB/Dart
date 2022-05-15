import '../entities/patient.dart';
import '../valueobjects/patient/patient_id.dart';
import '../valueobjects/patient/patient_firstName.dart';
import '../valueobjects/patient/patient_lastName.dart';
import '../valueobjects/patient/patient_birthDate.dart';
import '../valueobjects/patient/patient_email.dart';
import '../valueobjects/patient/patient_phoneNumber.dart';
import '../valueobjects/patient/patient_occupation.dart';
import '../enumerations/hold_type_enum.dart';
import '../observables/domain_event.dart';
import '../observables/observable.dart';

class RegisterPatientUseCase extends Observable {
  late Patient patient;
  late List<DomainEvent> events = [];

// constructor
  RegisterPatientUseCase() : super();

  registerPatient(
      PatientId id,
      PatientFirstName firstName,
      PatientLastName lastName,
      PatientBirthDate birthDate,
      PatientEmail email,
      PatientPhoneNumber phoneNumber,
      PatientOccupation occupation,
      HoldType holdType) {
    patient = Patient.create(id, firstName, lastName, birthDate, email,
        phoneNumber, occupation, holdType);

    // Aqui es donde se almacena la informacion del paciente en el UserRepositoy
    print('Paciente registrado exitosamente');

    // el owner deberia ser el administrador que registra el paciente, nos lo dara el framework mas tarde.
    events.add(DomainEvent('Registrar Paciente', {'owner': id}));

    // patron observador
    notifyAll(events);
  }
}
