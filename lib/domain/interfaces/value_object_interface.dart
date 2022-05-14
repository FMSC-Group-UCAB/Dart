/// IValueObject: Es una interfaz genérica que debe implementar cualquier clase que represente un Value Object.
/// [T] es el tipo de dato que representa el Value Object.
abstract class IValueObject<T> {

  ///Compara la igualdad de dos Value Objects.
  bool equals(T other);
}
