import '../entities/patient.dart';
import '../entities/suscription.dart';
import '../valueobjects/suscription/suscription_id.dart';
import '../valueobjects/suscription/suscription_created_at.dart';
import '../valueobjects/suscription/suscription_paid_at.dart';
import '../valueobjects/suscription/suscription_closed_at.dart';
import '../enumerations/suscription_cost_type_enum.dart';
import '../enumerations/suscription_type_enum.dart';
import '../interfaces/pay_method_interface.dart';

class RegisterSuscriptionUsecase {
  late final Suscription _suscription;

  ///Agregar el super del observable
  ///constructor
  RegisterSuscriptionUsecase(IPayMethod _pago);

  registerSuscription(
      SuscriptionId id,
      Patient patient,
      SuscriptionCreatedAt createdAt,
      SuscriptionPaidAt paidAt,
      SuscriptionClosedAt closedAt,
      SuscriptionCostType costType,
      SuscriptionType type) {
    //Validar que no tenga una suscripcion activa
    // Agregar excepcion de que no puede tener mas de una suscripcion activa, y que hizo el pago
    if (/*_pago.Pay()*/true) {
      //Si pago, crear la suscripcion
      _suscription = Suscription.create(
          id, patient, type, costType, createdAt, paidAt, closedAt);
    }
    //else {}
  }
}
