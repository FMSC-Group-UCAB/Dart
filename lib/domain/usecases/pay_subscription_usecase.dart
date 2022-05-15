import 'package:flutter_code/domain/entities/subscription.dart';
import 'package:flutter_code/domain/enumerations/hold_type_enum.dart';
import 'package:flutter_code/domain/enumerations/suscription_cost_type_enum.dart';
import 'package:flutter_code/domain/enumerations/suscription_type_enum.dart';
import 'package:flutter_code/domain/interfaces/pay_method_interface.dart';
import 'package:flutter_code/domain/observables/domain_event.dart';
import 'package:flutter_code/domain/observables/observable.dart';
import 'package:flutter_code/domain/valueobjects/suscription/subscription_paid_at.dart';

class PaySubscriptionUsecase extends Observable {
  late final IPayMethod payMethod;

  PaySubscriptionUsecase({required IPayMethod payMethod});

  paySuscription(Subscription subscription) async {
    //Iniciamos la lista de eventos.
    final List<DomainEvent> events = [];

    //Verificamos que la suscripción no se encuentre cancelada.
    if (subscription.closedAt.value.toString().isEmpty) {
      throw Exception("La suscripción esta cancelada.");
    }

    //Validamos que la suscripción este vencida.
    final paidAt = subscription.paidAt.value.add(Duration(
        days: (subscription.type == SuscriptionType.MONTHLY ? 1 : 12) * 12));
    if (paidAt.compareTo(DateTime.now()) > 0) {
      throw Exception("La suscripción aun no está vencida.");
    }

    //Validamos que el usuario no este bloqueado en el sistema
    if (subscription.patient.holdType != HoldType.BADUSE) {
      throw Exception("La suscripción aun no está vencida.");
    }

    //Calculamos el costo de la suscripción
    final cost = subscription.cost == SuscriptionCostType.BASIC ? 12.99 : 15.99;

    //Realizamos el pago a traves del método seleccionado.
    final result = await payMethod.pay(cost);

    if (result) {
      //Actualizamos la fecha de pago.
      subscription.update(subscription.type, subscription.cost,
          SubscriptionPaidAt(DateTime.now()), subscription.closedAt);

      //Creamos los eventos.
      events.add(DomainEvent("Pago de Suscripción", () {
        String name = subscription.patient.firstName.value;
      }));

      //Actualizamos el hold del paciente
      subscription.patient.update(
          subscription.patient.firstName,
          subscription.patient.lastName,
          subscription.patient.birthDate,
          subscription.patient.email,
          subscription.patient.phoneNumber,
          subscription.patient.occupation,
          HoldType.NONE);

      //Registramos los eventos
      events.add(DomainEvent("Hold Removido", () {
        String name = subscription.patient.firstName.value;
      }));
    }

    //Notificamos
    notifyAll(events);
  }
}
