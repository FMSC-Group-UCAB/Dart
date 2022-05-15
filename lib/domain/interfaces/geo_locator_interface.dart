///IGeoLocator: Es una interfaz genérica utilizada para implementar conversiones de objetos de localización geográfica ('D' <-> 'G').
///[D] es el tipo de parámetro que representa el objeto de dominio.
///[G] es el tipo de parámetro que representa el objeto del geolocalizador.
abstract class IGeoLocator<D,G> {

  ///Convierte un objeto de geolocalizador en un objeto del dominio.
  ///Usando [data] como data del geolocalizador.
  D toDomain(G data);

  ///Convierte un objeto de dominio en un objeto del geolocalizador.
  ///Usando [data] como data del dominio.
  G fromDomain(D other);
}