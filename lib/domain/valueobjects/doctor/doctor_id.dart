import '../../interfaces/value_object_interface.dart';

class DoctorId implements IValueObject<DoctorId> {
  late final int _id;

// getter
  int get value {
    return _id;
  }

  DoctorId(int id) {
    _id = id;
  }

  @override
  bool equals(DoctorId other) {
    return _id == other._id;
  }

// Patron Factory
  static DoctorId create(int id) {
    return DoctorId(id);
  }
}
