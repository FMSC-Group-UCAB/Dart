///SuscriptionCostType: Es un tipo enumerado que contiene los planes de suscripcion.
enum SuscriptionCostType { 
  BASIC,
  PREMIUM,
}

extension SuscriptionCostTypeExtension on SuscriptionCostType {
  double get cost {
    switch (this) {
      case SuscriptionCostType.BASIC:
        return 12.99;
      case SuscriptionCostType.PREMIUM:
        return 19.99;
      default:
        return 0.0;
    }
  }
}
