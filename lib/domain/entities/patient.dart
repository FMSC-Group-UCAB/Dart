import '../enumerations/hold_type_enum.dart';
import '../valueobjects/patient/patient_birthDate.dart';
import '../valueobjects/patient/patient_email.dart';
import '../valueobjects/patient/patient_firstName.dart';
import '../valueobjects/patient/patient_id.dart';
import '../valueobjects/patient/patient_lastName.dart';
import '../valueobjects/patient/patient_occupation.dart';
import '../valueobjects/patient/patient_phoneNumber.dart';

///Patient: Es una clase concreta utilizada para el manejo de los pacientes.
class Patient {

  late final PatientId _id;
  late PatientFirstName _firstName;
  late PatientLastName _lastName;
  late PatientBirthDate _birthDate;
  late PatientEmail _email;
  late PatientPhoneNumber _phoneNumber;
  late PatientOccupation _occupation;
  late HoldType _holdType;

  //Getters
  PatientId get id => _id;
  PatientFirstName get firstName => _firstName;
  PatientLastName get lastName => _lastName;
  PatientBirthDate get birthDate => _birthDate;
  PatientEmail get email => _email;
  PatientPhoneNumber get phoneNumber => _phoneNumber;
  PatientOccupation get occupation => _occupation;
  HoldType get holdType => _holdType;


  //Setters
  set firstName(PatientFirstName firstName) => _firstName = firstName;
  set lastName(PatientLastName lastName) => _lastName = lastName;
  set birthDate(PatientBirthDate birthDate) => _birthDate = birthDate;
  set email(PatientEmail email) => _email = email;
  set phoneNumber(PatientPhoneNumber phoneNumber) => _phoneNumber = phoneNumber;
  set occupation(PatientOccupation occupation) => _occupation = occupation;
  set holdType(HoldType holdType) => _holdType = holdType;

  //Constructor
  Patient(
      PatientId id,
      PatientFirstName firstName,
      PatientLastName lastName,
      PatientBirthDate birthDate,
      PatientEmail email,
      PatientPhoneNumber phoneNumber,
      PatientOccupation occupation,
      HoldType holdType) {
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _birthDate = birthDate;
    _email = email;
    _phoneNumber = phoneNumber;
    _occupation = occupation;
    _holdType = holdType;
  }

  ///Patron Factory.
  static Patient create(
      PatientId id,
      PatientFirstName firstName,
      PatientLastName lastName,
      PatientBirthDate birthDate,
      PatientEmail email,
      PatientPhoneNumber phoneNumber,
      PatientOccupation occupation,
      HoldType holdType) {
    return Patient( id, firstName, lastName, birthDate, email, phoneNumber, occupation, holdType);
  }

}