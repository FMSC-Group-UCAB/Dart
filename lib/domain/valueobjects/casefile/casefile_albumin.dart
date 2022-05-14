import '../../interfaces/value_object_interface.dart';

class CasefileAlbumin implements IValueObject<CasefileAlbumin> {
  String _albumin;

  //constructor

  CasefileAlbumin(this._albumin);

  //getter
  String get Albumin => this._albumin;

  bool equals(CasefileAlbumin other) {
    //Agregar validaciones
    return this._albumin == other._albumin;
  }

  //Aplicacion del patron factory

  static CasefileAlbumin create(String albumin) {
    return CasefileAlbumin(albumin);
  }
}
