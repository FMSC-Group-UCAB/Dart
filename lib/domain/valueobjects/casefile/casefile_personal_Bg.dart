import '../../interfaces/value_object_interface.dart';

class CasefilePersonalBg implements IValueObject<CasefilePersonalBg> {
  String _personalBg;

  //Constructor

  CasefilePersonalBg(this._personalBg);

  //Getters
  String get PersonalBg => _personalBg;

  bool equals(CasefilePersonalBg other) {
    //Agregar validaciones
    return this._personalBg == other._personalBg;
  }

  // Aplicacion del patron factory
  static CasefilePersonalBg create(String personalBg) {
    return CasefilePersonalBg(personalBg);
  }
}
