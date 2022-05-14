import '../../interfaces/value_object_interface.dart';

class DoctorLastName implements IValueObject<DoctorLastName> {
  late final String _lastName;

// getters
  String get value {
    return _lastName;
  }

// constructor
  DoctorLastName(String lastName) {
    _lastName = lastName;
  }

  @override
  bool equals(DoctorLastName other) {
    return _lastName == other._lastName;
  }

// Patron Factory
  static DoctorLastName create(String lastName) {
    return DoctorLastName(lastName);
  }
}
