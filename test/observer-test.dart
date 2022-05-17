import '../lib/domain/observables/observer.interface.dart';
import '../lib/domain/observables/domain_event.dart';

class NuevoObservador extends Observer {
  raise(List<DomainEvent> events) {
    events.forEach((event) => print(event.toJson()));
  }
}
