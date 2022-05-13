import '../../interfaces/value_object_interface.dart';

class SuscriptionId implements IValueObject<SuscriptionId> {
  final int _id;

  int get Value {
    return _id;
  }

  SuscriptionId(this._id);

  @override
  bool equals(SuscriptionId other) {
    //Agregar validaciones
    return _id == other._id;
  }
}
