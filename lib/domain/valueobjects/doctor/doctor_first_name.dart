import '../../interfaces/value_object_interface.dart';

class DoctorFirstName implements IValueObject<DoctorFirstName> {
  String firstName;

  DoctorFirstName(this.firstName);

  @override
  bool equals(DoctorFirstName other) {
    return this.firstName == other.firstName;
  }
}
