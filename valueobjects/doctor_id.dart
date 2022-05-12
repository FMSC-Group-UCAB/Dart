import '../interfaces/value_object_interface.dart';

class DoctorId implements IValueObject<DoctorId> {
  int id;

  DoctorId(this.id);

  @override
  bool equals(DoctorId other) {
    return this.id == other.id;
  }
}
