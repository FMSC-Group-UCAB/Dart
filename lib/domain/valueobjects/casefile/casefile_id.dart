import '../../interfaces/value_object_interface.dart';

class CasefileId implements IValueObject<CasefileId> {
  late int _id;

  //Constructor

  CasefileId(this._id);

  //Getters
  int get Id => _id;

  bool equals(CasefileId other) {
    //Agregar validaciones
    return this._id == other._id;
  }

  // Aplicacion del patron factory
  static CasefileId create(int id) {
    return CasefileId(id);
  }
}
