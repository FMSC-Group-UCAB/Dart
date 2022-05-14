/// IValueObject: Es una interfaz que debe implementar cualquier clase que represente un Value Object.
abstract class IValueObject<T> {
  bool equals(T other);
}
