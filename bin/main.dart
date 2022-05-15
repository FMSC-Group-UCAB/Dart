import '../lib/domain/enumerations/hold_type_enum.dart';
import 'package:flutter_code/domain/observables/domain_event.dart';
import 'package:flutter_code/domain/observables/observable.dart';
import '../lib/domain/usecases/register_patient_usecase.dart';
import '../lib/domain/valueobjects/patient/patient_id.dart';
import '../lib/domain/valueobjects/patient/patient_firstName.dart';
import '../lib/domain/valueobjects/patient/patient_lastName.dart';
import '../lib/domain/valueobjects/patient/patient_birthDate.dart';
import '../lib/domain/valueobjects/patient/patient_email.dart';
import '../lib/domain/valueobjects/patient/patient_phoneNumber.dart';
import '../lib/domain/valueobjects/patient/patient_occupation.dart';

void main(List<String> arguments) {
  print('Hello world!');

  DomainEvent("Nombre Cambiado", {});

  RegisterPatientUseCase registerPatient = RegisterPatientUseCase();
  registerPatient.registerPatient(
      PatientId(1),
      PatientFirstName('Froilan'),
      PatientLastName('Roa'),
      PatientBirthDate('1998-17-4'),
      PatientEmail('email@example.com'),
      PatientPhoneNumber('+58 0000000000'),
      PatientOccupation('Student'),
      HoldType.NONE);
}
