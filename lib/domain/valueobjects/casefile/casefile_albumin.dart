import '../../interfaces/value_object_interface.dart';
import './casefile_range.dart';

class CasefileAlbumin implements IValueObject<CasefileAlbumin> {
  late final String _albumin;
  late final CaseFileRange _range;

  //getter
  String get valueAlbumin => this._albumin;
  CaseFileRange get range => this._range;

  //constructor
  CasefileAlbumin(this._albumin, this._range);

  bool equals(CasefileAlbumin other) {
    //Agregar validaciones
    return this._albumin == other._albumin;
  }

  ///Aplicacion del patron factory
  /// Recibe [albumin] como parametro y crea una instancia de [CasefileAlbumin]
  static CasefileAlbumin create(String albumin, CaseFileRange range) {
    return CasefileAlbumin(albumin, range);
  }
}
