import '../interfaces/value_object_interface.dart';

class CasefilePersonalBg implements IValueObject<CasefilePersonalBg> {
  String personalBg;

  CasefilePersonalBg(this.personalBg);

  bool equals(CasefilePersonalBg other) {
    //Agregar validaciones
    return this.personalBg == other.personalBg;
  }
}
