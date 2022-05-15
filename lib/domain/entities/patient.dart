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
  /// La funcion recibe [id], [firstName], [lastName], [birthDate], [email], [phoneNumber], [occupation] y [holdType]
  /// para crear una instancia de la clase [Patient].
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


  ///Métodos de la clase.
  ///La función permite actualizar los datos del paciente, los cuales son:
  /// [firstName], [lastName], [birthDate], [email], [phoneNumber], [occupation] y [holdType]. 
  void update(PatientFirstName firstName, PatientLastName lastName, PatientBirthDate birthDate, PatientEmail email, 
  PatientPhoneNumber phoneNumber, PatientOccupation occupation, HoldType holdType) {
    _firstName = firstName;
    _lastName = lastName;
    _birthDate = birthDate;
    _email = email;
    _phoneNumber = phoneNumber;
    _occupation = occupation;
    _holdType = holdType;

    //TODO: Agregar las validaciones de los campos.
  }

}