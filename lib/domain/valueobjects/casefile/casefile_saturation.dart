import '../../interfaces/value_object_interface.dart';

class CasefileSaturation implements IValueObject<CasefileSaturation> {
  int _saturation;

  //Constructor

  CasefileSaturation(this._saturation);

  //Getters
  int get Saturation => _saturation;

  bool equals(CasefileSaturation other) {
    //Agregar validaciones
    return this._saturation == other._saturation;
  }

  // Aplicacion del patron factory
  static CasefileSaturation create(int saturation) {
    return CasefileSaturation(saturation);
  }
}
