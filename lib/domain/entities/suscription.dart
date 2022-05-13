import '../enumerations/suscription_cost_type_enum.dart';
import '../enumerations/suscription_type_enum.dart';
import '../valueobjects/suscription/suscription_closed_at.dart';
import '../valueobjects/suscription/suscription_id.dart';
import '../valueobjects/suscription/suscription_created_at.dart';
import '../valueobjects/suscription/suscription_paid_at.dart';

///Suscription: Es una clase concreta utilizada para el manejo de las suscripcionones del paciente.
class Suscription {
  late final SuscriptionId _id;
  late SuscriptionType _type;
  late SuscriptionCostType _cost;
  late SuscriptionCreatedAt _createdAt;
  late SuscriptionPaidAt _paidAt;
  late SuscriptionClosedAt _closedAt;

  //Getters
  SuscriptionId get id {
    return _id;
  }

  SuscriptionType get type {
    return _type;
  }

  SuscriptionCostType get cost {
    return _cost;
  }

  SuscriptionCreatedAt get createdAt {
    return _createdAt;
  }

  SuscriptionPaidAt get paidAt {
    return _paidAt;
  }

  SuscriptionClosedAt get closedAt {
    return _closedAt;
  }

  ///Constructor de Suscription.
  Suscription(
      SuscriptionId id,
      SuscriptionType type,
      SuscriptionCostType cost,
      SuscriptionCreatedAt createdAt,
      SuscriptionPaidAt paidAt,
      SuscriptionClosedAt closedAt) {
    //ToDo: Validaciones...
    _id = id;
    _type = type;
    _cost = cost;
    _createdAt = createdAt;
    _paidAt = paidAt;
    _closedAt = closedAt;
  }

  ///Patron Factory.
  static Suscription create(
      SuscriptionId id,
      SuscriptionType type,
      SuscriptionCostType cost,
      SuscriptionCreatedAt createdAt,
      SuscriptionPaidAt paidAt,
      SuscriptionClosedAt closedAt) {
    return Suscription(id, type, cost, createdAt, paidAt, closedAt);
  }
}
