import '../interfaces/value-object.interface.dart';

class CasefileAlbumin implements IValueObject<CasefileAlbumin> {
  String albumin;

  CasefileAlbumin(this.albumin);

  bool equals(CasefileAlbumin other) {
    //Agregar validaciones
    return this.albumin == other.albumin;
  }
}
