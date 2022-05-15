import '../entities/patient.dart';
import '../entities/subscription.dart';
import '../valueobjects/suscription/subscription_id.dart';
import '../valueobjects/suscription/subscription_created_at.dart';
import '../valueobjects/suscription/subscription_paid_at.dart';
import '../valueobjects/suscription/subscription_closed_at.dart';
import '../enumerations/suscription_cost_type_enum.dart';
import '../enumerations/suscription_type_enum.dart';
import '../interfaces/pay_method_interface.dart';

class RegisterSuscriptionUsecase {
  late final Subscription _suscription;

  ///Agregar el super del observable
  ///constructor
  RegisterSuscriptionUsecase(IPayMethod _pago);

  registerSuscription(
      SubscriptionId id,
      Patient patient,
      SubscriptionCreatedAt createdAt,
      SubscriptionPaidAt paidAt,
      SubscriptionClosedAt closedAt,
      SuscriptionCostType costType,
      SuscriptionType type) {
    //Validar que no tenga una suscripcion activa
    // Agregar excepcion de que no puede tener mas de una suscripcion activa, y que hizo el pago
    if (/*_pago.Pay()*/true) {
      //Si pago, crear la suscripcion
      _suscription = Subscription.create(
          id, patient, type, costType, createdAt, paidAt, closedAt);
    }
    //else {}
  }
}
