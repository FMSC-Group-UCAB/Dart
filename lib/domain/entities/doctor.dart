import '../valueobjects/doctor_id.dart';
import '../valueobjects/doctor_first_name.dart';
import '../valueobjects/doctor_last_name.dart';
import '../enumerations/specialty_type_enum.dart';
import '../valueobjects/doctor_location.dart';
import '../enumerations/hold_type_enum.dart';

class Doctor {
  DoctorId id;
  DoctorFirstName firstName;
  DoctorLastName lastName;
  List<SpecialtyType> specialty;
  DoctorLocation location;
  HoldType holdType;

  Doctor(this.id, this.firstName, this.lastName, this.specialty, this.location,
      this.holdType);
}
