import '../interfaces/value-object.interface.dart';

class CasefileSaturation implements IValueObject<CasefileSaturation> {
  int saturation;

  CasefileSaturation(this.saturation);

  bool equals(CasefileSaturation other) {
    //Agregar validaciones
    return this.saturation == other.saturation;
  }
}
