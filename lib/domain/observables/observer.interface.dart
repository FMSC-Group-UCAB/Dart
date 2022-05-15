import 'domain_event.dart';

///PayMethod: Es una interfaz utilizada para implementar métodos de pago
abstract class Observer {
  ///Recibe los eventos del dominio de los observables.
  raise(List<DomainEvent> domainEvents);
}
