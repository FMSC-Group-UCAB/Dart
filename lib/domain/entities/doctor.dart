import '../valueobjects/doctor/doctor_id.dart';
import '../valueobjects/doctor/doctor_first_name.dart';
import '../valueobjects/doctor/doctor_last_name.dart';
import '../enumerations/specialty_type_enum.dart';
import '../valueobjects/doctor/doctor_location.dart';
import '../enumerations/hold_type_enum.dart';

class Doctor {
  late final DoctorId _id;
  late DoctorFirstName _firstName;
  late DoctorLastName _lastName;
  late List<SpecialtyType> _specialty;
  late DoctorLocation _location;
  late HoldType _holdType;

  // getters
  DoctorId get id => _id;
  DoctorFirstName get firstName => _firstName;
  DoctorLastName get lastName => _lastName;
  List<SpecialtyType> get specialty => _specialty;
  DoctorLocation get location => _location;
  HoldType get holdType => _holdType;

  // setters
  set firstName(DoctorFirstName firstName) => _firstName = firstName;
  set lastName(DoctorLastName lastName) => _lastName = lastName;
  set specialty(List<SpecialtyType> specialty) => _specialty = specialty;
  set location(DoctorLocation location) => _location = location;
  set holdType(HoldType holdType) => _holdType = holdType;

// constructor
  Doctor(
      DoctorId id,
      DoctorFirstName firstName,
      DoctorLastName lastName,
      List<SpecialtyType> specialty,
      DoctorLocation location,
      HoldType holdType) {
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _specialty = specialty;
    _location = location;
    _holdType = holdType;
  }

// patron factory
  static Doctor create(
      DoctorId id,
      DoctorFirstName firstName,
      DoctorLastName lastName,
      List<SpecialtyType> specialty,
      DoctorLocation location,
      HoldType holdType) {
    return Doctor(id, firstName, lastName, specialty, location, holdType);
  }
}
