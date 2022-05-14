import '../../interfaces/value_object_interface.dart';

class DoctorLocation implements IValueObject<DoctorLocation> {
  late final String _latitude;
  late final String _longitude;

// getters
  String get valueLongitude {
    return _longitude;
  }

  String get valueLatitude {
    return _latitude;
  }

// constructor
  DoctorLocation(String latitude, String longitude) {
    _latitude = latitude;
    _longitude = longitude;
  }

  @override
  bool equals(DoctorLocation other) {
    return _latitude == other._latitude && _longitude == other._longitude;
  }

// patron factory
  static DoctorLocation create(String latitude, String longitude) {
    return DoctorLocation(latitude, longitude);
  }
}
