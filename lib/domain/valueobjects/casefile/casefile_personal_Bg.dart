import '../../interfaces/value_object_interface.dart';

class CasefilePersonalBg implements IValueObject<CasefilePersonalBg> {
  late final String _personalBg;

  //Getters
  String get valuePersonalBg => _personalBg;

  //Constructor
  CasefilePersonalBg(this._personalBg);

  bool equals(CasefilePersonalBg other) {
    //Agregar validaciones
    return this._personalBg == other._personalBg;
  }

  /// Aplicacion del patron factory
  /// Recibe [personalBg] como parametro y crea una instancia de [CasefilePersonalBg]
  static CasefilePersonalBg create(String personalBg) {
    return CasefilePersonalBg(personalBg);
  }
}
