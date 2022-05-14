import '../../interfaces/value_object_interface.dart';

class CasefileId implements IValueObject<CasefileId> {
  late final int _id;

  //Getters
  int get valueId => _id;

  //Constructor
  CasefileId(this._id);

  bool equals(CasefileId other) {
    //Agregar validaciones
    return this._id == other._id;
  }

  /// Aplicacion del patron factory
  /// Recibe [id] como parametro y crea una instancia de [CasefileId]
  static CasefileId create(int id) {
    return CasefileId(id);
  }
}
