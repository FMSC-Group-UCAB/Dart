import '../enumerations/hold_type_enum.dart';
import '../valueobjects/patient/patient_birthDate.dart';
import '../valueobjects/patient/patient_email.dart';
import '../valueobjects/patient/patient_firstName.dart';
import '../valueobjects/patient/patient_id.dart';
import '../valueobjects/patient/patient_lastName.dart';
import '../valueobjects/patient/patient_occupation.dart';
import '../valueobjects/patient/patient_phoneNumber.dart';

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