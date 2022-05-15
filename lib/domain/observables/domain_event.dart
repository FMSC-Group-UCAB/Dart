///DomainEvent: Es una clase concreta utilizada para implementar eventos del dominio.
class DomainEvent {
  late final String _name;
  late final DateTime _timestamp;
  late final Object _payload;

  String get name => _name;
  DateTime get timestamp => _timestamp;
  Object get payload => _payload;

  DomainEvent(String name, Object payload) {
    _name = name;
    _timestamp = DateTime.now();
    _payload = payload;
  }

  ///Patron Factory.
  static DomainEvent create(String name, Object payload) {
    return DomainEvent(name, payload);
  }
}
