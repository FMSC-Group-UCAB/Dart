import '../../interfaces/value_object_interface.dart';

class DoctorFirstName implements IValueObject<DoctorFirstName> {
  late final String _firstName;

// getters
  String get value {
    return _firstName;
  }

// constructor
  DoctorFirstName(String firstName) {
    _firstName = firstName;
  }

  @override
  bool equals(DoctorFirstName other) {
    return _firstName == other._firstName;
  }

// Patron Factory
  static DoctorFirstName create(String firstName) {
    return DoctorFirstName(firstName);
  }
}
