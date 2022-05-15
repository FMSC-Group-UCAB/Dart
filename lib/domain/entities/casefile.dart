import '../enumerations/specialty_type_enum.dart';
import '../valueobjects/casefile/casefile_blood_pressure.dart';
import '../valueobjects/casefile/casefile_personal_Bg.dart';
import '../valueobjects/casefile/casefile_height.dart';
import '../valueobjects/casefile/casefile_saturation.dart';
import '../valueobjects/casefile/casefile_heart_rate.dart';
import '../valueobjects/casefile/casefile_id.dart';

/// Clase plantilla para el manejo de las historias medicas de los pacientes

abstract class Casefile {
  //Atributos
  late final CasefileId _id;
  late CasefilePersonalBg _personalBg;
  late CasefileBloodPressure _bloodPressure;
  late CasefileHeartRate _heartRate;
  late CasefileSaturation _saturation;
  late CasefileHeight _height;
  late SpecialtyType _specialtyType;

  //getters
  CasefileId get id => _id;
  CasefilePersonalBg get personalBg => _personalBg;
  CasefileBloodPressure get bloodPressure => _bloodPressure;
  CasefileHeartRate get heartRate => _heartRate;
  CasefileSaturation get saturation => _saturation;
  CasefileHeight get height => _height;
  SpecialtyType get specialtyType => _specialtyType;

  //Constructor
  Casefile(
      CasefileId id,
      CasefilePersonalBg personalBg,
      CasefileBloodPressure bloodPressure,
      CasefileHeartRate heartRate,
      CasefileSaturation saturation,
      CasefileHeight height,
      SpecialtyType specialtyType) {
    _id = id;
    _personalBg = personalBg;
    _bloodPressure = bloodPressure;
    _heartRate = heartRate;
    _saturation = saturation;
    _height = height;
    _specialtyType = specialtyType;
  }

  //Métodos
  update(
      CasefileBloodPressure bloodPressure,
      CasefileHeartRate heartRate,
      CasefileSaturation saturation,
      CasefileHeight height,
      dynamic extras) {

    _bloodPressure = bloodPressure;
    _heartRate = heartRate;
    _saturation = saturation;
    _height = height;

    updateExtras(extras);
  }

  void updateExtras(dynamic other);

  //Agregar Static
  void fromSpecialty(SpecialtyType specialtyType, object);
}
