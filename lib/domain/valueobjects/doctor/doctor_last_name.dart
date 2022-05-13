import '../../interfaces/value_object_interface.dart';

class DoctorLastName implements IValueObject<DoctorLastName> {
  String lastName;

  DoctorLastName(this.lastName);

  @override
  bool equals(DoctorLastName other) {
    return this.lastName == other.lastName;
  }
}
