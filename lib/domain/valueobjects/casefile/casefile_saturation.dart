import '../../interfaces/value_object_interface.dart';

class CasefileSaturation implements IValueObject<CasefileSaturation> {
  late final int _saturation;

  //Getters
  int get valueSaturation => _saturation;

  //Constructor
  CasefileSaturation(this._saturation);

  bool equals(CasefileSaturation other) {
    //Agregar validaciones
    return this._saturation == other._saturation;
  }

  /// Aplicacion del patron factory
  /// Recibe [saturation] como parametro y crea una instancia de [CasefileSaturation]
  static CasefileSaturation create(int saturation) {
    return CasefileSaturation(saturation);
  }
}
