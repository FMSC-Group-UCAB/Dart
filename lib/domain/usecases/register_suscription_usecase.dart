import '../entities/patient.dart';
import '../entities/subscription.dart';
import '../valueobjects/suscription/subscription_id.dart';
import '../valueobjects/suscription/subscription_created_at.dart';
import '../valueobjects/suscription/subscription_paid_at.dart';
import '../valueobjects/suscription/subscription_closed_at.dart';
import '../enumerations/suscription_cost_type_enum.dart';
import '../enumerations/suscription_type_enum.dart';
import '../interfaces/pay_method_interface.dart';
import '../observables/domain_event.dart';
import '../observables/observable.dart';

class RegisterSuscriptionUsecase {
  late final Subscription _suscription;
  late final List<DomainEvent> _events;
  late final IPayMethod _payMethod;

  ///Agregar el super del observable
  ///constructor
  RegisterSuscriptionUsecase(IPayMethod payMethod) : super() {
    this._payMethod = payMethod;
  }

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
    if (_payMethod.getPayMethod(costType.cost) == true) {
      //Si pago, crear la suscripcion
      _suscription = Subscription.create(
          id, patient, type, costType, createdAt, paidAt, closedAt);
      
      //Agregar el evento de que se creo la suscripcion
      _events.add(DomainEvent.create(
          patient.firstName.value, {'suscription': _suscription.id.value}));
      print('Se creo la suscripcion exitosamente');
    }
    else{
      //Si no pago, lanzar excepcion
      throw 'No se pudo realizar el pago';
    }
  }
}
