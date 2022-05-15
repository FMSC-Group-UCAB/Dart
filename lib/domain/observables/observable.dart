import 'domain_event.dart';
import 'observer.interface.dart';

///Observable: Es una clase abstracta utilizada para agregar, remover y notificar a los observadores de la misma.
abstract class Observable {
  late final List<Observer> _observers = [];

  ///Permite agregar un nuevo observador.
  void add(Observer observer) {
    _observers.add(observer);
  }

  ///Permite eliminar un observador.
  void remove(Observer observer) {
    _observers.retainWhere((element) => element == observer);
  }

  ///Notifica los observadores.
  void notifyAll(DomainEvent domainEvents) {
    for (var element in _observers) {
      element.raise(domainEvents);
    }
  }
}
