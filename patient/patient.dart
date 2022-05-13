import '../holdType_enum.dart';
import 'patient_birthDate.dart';
import 'patient_email.dart';
import 'patient_firstName.dart';
import 'patient_id.dart';
import 'patient_lastName.dart';
import 'patient_occupation.dart';
import 'patient_phoneNumber.dart';

class Patient {

  PatientId id;
  PatientFirstName firstName;
  PatientLastName lastName;
  PatientBirthDate birthDate;
  PatientEmail email;
  PatientPhoneNumber phoneNumber;
  PatientOccupation occupation;
  HoldType holdType;


  Patient({
    required this.id, 
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.email,
    required this.phoneNumber,
    required this.occupation,
    required this.holdType,
  });

}