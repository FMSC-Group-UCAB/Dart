import '../../interfaces/value_object_interface.dart';

class DoctorLocation implements IValueObject<DoctorLocation> {
  String latitude;
  String longitude;

  DoctorLocation(this.latitude, this.longitude);

  @override
  bool equals(DoctorLocation other) {
    return this.latitude == other.latitude && this.longitude == other.longitude;
  }
}
