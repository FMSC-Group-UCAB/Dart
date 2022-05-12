
import 'patient_firstName.dart';
import 'patient_id.dart';
import 'patient_lastName.dart';

abstract class Patient {

  PatientId id;
  PatientFirstName firstName;
  PatientLastName lastName;


  Patient({
    required this.id, 
    required this.firstName,
    required this.lastName,
  });

}