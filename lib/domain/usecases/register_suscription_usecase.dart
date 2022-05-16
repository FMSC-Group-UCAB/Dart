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

class RegisterSuscriptionUsecase extends Observable {
  late final Subscription _suscription;
  late final List<DomainEvent> _events = [];
  late final IPayMethod payMethod;

  /// Constructor del caso de uso registrar suscripcion que recibe una instancia de IPayMethod
  /// para poder realizar el pago de la suscripcion
  RegisterSuscriptionUsecase(IPayMethod payMethod) : super() {
    this.payMethod = payMethod;
  }

  registerSuscription(
      SubscriptionId id,
      Patient patient,
      SubscriptionCreatedAt createdAt,
      SubscriptionPaidAt paidAt,
      SubscriptionClosedAt closedAt,
      SuscriptionCostType costType,
      SuscriptionType type) async {
    //Se valida que la suscripcion se haya pagado
    // const result = await _payMethod.pay(costType.cost);

    if (await payMethod.pay(costType.cost)) {
      //Si pago, crear la suscripcion
      _suscription = Subscription.create(
          id, patient, type, costType, createdAt, paidAt, closedAt);

      //Agregar el evento de que se creo la suscripcion
      _events.add(DomainEvent.create("Registrar suscripcion", {
        'owner': patient.firstName.value + ' ' + patient.lastName.value,
        'ownerId': patient.id.value
      }));
      print(
          'El paciente ${patient.firstName.value} se suscribio correctamente al sistema con id de suscripcion ${_suscription.id.value} con un costo de ${costType.cost} y un tipo de suscripcion ${type}, pagada en ${paidAt.value} y creada en ${createdAt.value}');

      //Notificamos
      notifyAll(_events);
    } else {
      //Si no pago, lanzar excepcion
      throw 'No se pudo realizar el pago';
    }
  }
}
