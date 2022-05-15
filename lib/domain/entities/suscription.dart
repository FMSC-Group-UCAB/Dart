import '../enumerations/suscription_cost_type_enum.dart';
import '../enumerations/suscription_type_enum.dart';
import '../valueobjects/suscription/suscription_closed_at.dart';
import '../valueobjects/suscription/suscription_id.dart';
import '../valueobjects/suscription/suscription_created_at.dart';
import '../valueobjects/suscription/suscription_paid_at.dart';
import 'patient.dart';

///Suscription: Es una clase concreta utilizada para el manejo de las suscripcionones del paciente.
class Suscription {
  late final SuscriptionId _id;
  late final Patient _patient;
  late SuscriptionType _type;
  late SuscriptionCostType _cost;
  late SuscriptionCreatedAt _createdAt;
  late SuscriptionPaidAt _paidAt;
  late SuscriptionClosedAt _closedAt;

  //Getters
  SuscriptionId get id => _id;
  Patient get patient => _patient;
  SuscriptionType get type => _type;
  SuscriptionCostType get cost => _cost;
  SuscriptionCreatedAt get createdAt => _createdAt;
  SuscriptionPaidAt get paidAt => _paidAt;
  SuscriptionClosedAt get closedAt => _closedAt;

  ///Constructor de Suscription.
  Suscription(
      SuscriptionId id,
      Patient patient,
      SuscriptionType type,
      SuscriptionCostType cost,
      SuscriptionCreatedAt createdAt,
      SuscriptionPaidAt paidAt,
      SuscriptionClosedAt closedAt) {
    //ToDo: Validaciones...
    _id = id;
    _patient = patient;
    _type = type;
    _cost = cost;
    _createdAt = createdAt;
    _paidAt = paidAt;
    _closedAt = closedAt;
  }

  ///Patron Factory.
  static Suscription create(
      SuscriptionId id,
      Patient patient,
      SuscriptionType type,
      SuscriptionCostType cost,
      SuscriptionCreatedAt createdAt,
      SuscriptionPaidAt paidAt,
      SuscriptionClosedAt closedAt) {
    return Suscription(id, patient, type, cost, createdAt, paidAt, closedAt);
  }
}
