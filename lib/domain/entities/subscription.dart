import '../enumerations/suscription_cost_type_enum.dart';
import '../enumerations/suscription_type_enum.dart';
import '../valueobjects/suscription/subscription_closed_at.dart';
import '../valueobjects/suscription/subscription_id.dart';
import '../valueobjects/suscription/subscription_created_at.dart';
import '../valueobjects/suscription/subscription_paid_at.dart';
import 'patient.dart';

///Suscription: Es una clase concreta utilizada para el manejo de las suscripcionones del paciente.
class Subscription {
  late final SubscriptionId _id;
  late final Patient _patient;
  late SuscriptionType _type;
  late SuscriptionCostType _cost;
  late SubscriptionCreatedAt _createdAt;
  late SubscriptionPaidAt _paidAt;
  late SubscriptionClosedAt? _closedAt;

  //Getters
  SubscriptionId get id => _id;
  Patient get patient => _patient;
  SuscriptionType get type => _type;
  SuscriptionCostType get cost => _cost;
  SubscriptionCreatedAt get createdAt => _createdAt;
  SubscriptionPaidAt get paidAt => _paidAt;
  SubscriptionClosedAt? get closedAt => _closedAt;

  ///Constructor de Suscription.
  Subscription(
      SubscriptionId id,
      Patient patient,
      SuscriptionType type,
      SuscriptionCostType cost,
      SubscriptionCreatedAt createdAt,
      SubscriptionPaidAt paidAt,
      SubscriptionClosedAt? closedAt) {
    //ToDo: Validaciones...
    _id = id;
    _patient = patient;
    _type = type;
    _cost = cost;
    _createdAt = createdAt;
    _paidAt = paidAt;
    _closedAt = closedAt;
  }

  update(SuscriptionType type, SuscriptionCostType cost,
      SubscriptionPaidAt paidAt, SubscriptionClosedAt? closedAt) {
    _type = type;
    _cost = cost;
    _paidAt = paidAt;
    _closedAt = closedAt;
  }

  ///Patron Factory.
  static Subscription create(
      SubscriptionId id,
      Patient patient,
      SuscriptionType type,
      SuscriptionCostType cost,
      SubscriptionCreatedAt createdAt,
      SubscriptionPaidAt paidAt,
      SubscriptionClosedAt? closedAt) {
    return Subscription(id, patient, type, cost, createdAt, paidAt, closedAt);
  }
}
