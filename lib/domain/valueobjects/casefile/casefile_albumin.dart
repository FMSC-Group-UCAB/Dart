import '../../interfaces/value_object_interface.dart';

class CasefileAlbumin implements IValueObject<CasefileAlbumin> {
  late final String _albumin;

  //getter
  String get valueAlbumin => this._albumin;

  //constructor
  CasefileAlbumin(this._albumin);


  bool equals(CasefileAlbumin other) {
    //Agregar validaciones
    return this._albumin == other._albumin;
  }

  ///Aplicacion del patron factory
  /// Recibe [albumin] como parametro y crea una instancia de [CasefileAlbumin]
  static CasefileAlbumin create(String albumin) {
    return CasefileAlbumin(albumin);
  }
}
