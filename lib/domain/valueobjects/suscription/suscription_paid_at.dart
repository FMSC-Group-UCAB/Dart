import '../../interfaces/value_object_interface.dart';

class SuscriptionPaidAt implements IValueObject<SuscriptionPaidAt> {
  final String _paidAt;

  String get Value {
    return _paidAt;
  }

  SuscriptionPaidAt(this._paidAt);

  @override
  bool equals(SuscriptionPaidAt other) {
    //Agregar validaciones
    return _paidAt == other._paidAt;
  }
}
