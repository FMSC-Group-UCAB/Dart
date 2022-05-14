import '../enumerations/specialty_type_enum.dart';
import '../valueobjects/casefile/casefile_blood_pressure.dart';
import '../valueobjects/casefile/casefile_personal_Bg.dart';
import '../valueobjects/casefile/casefile_height.dart';
import '../valueobjects/casefile/casefile_saturation.dart';
import '../valueobjects/casefile/casefile_heart_rate.dart';
import '../valueobjects/casefile/casefile_id.dart';

abstract class Casefile {
  //Atributos
  late final CasefileId _id;
  late CasefilePersonalBg _personalBg;
  late CasefileBloodPressure _bloodPressure;
  late CasefileHeartRate _heartRate;
  late CasefileSaturation _saturation;
  late CasefileHeight _height;
  late SpecialtyType _specialtyType;
 
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
  updateCasefile(Casefile other);
  //Agregar Static
  void fromSpecialty(SpecialtyType specialtyType, object);

  //getters
  CasefileId get id => _id;
  CasefilePersonalBg get personalBg => _personalBg;
  CasefileBloodPressure get bloodPressure => _bloodPressure;
  CasefileHeartRate get heartRate => _heartRate;
  CasefileSaturation get saturation => _saturation;
  CasefileHeight get height => _height;
  SpecialtyType get specialtyType => _specialtyType;

  // setters

  set personalBg(CasefilePersonalBg personalBg) => _personalBg = personalBg;
  set bloodPressure(CasefileBloodPressure bloodPressure) =>
      _bloodPressure = bloodPressure;
  set heartRate(CasefileHeartRate heartRate) => _heartRate = heartRate;
  set saturation(CasefileSaturation saturation) => _saturation = saturation;
  set height(CasefileHeight height) => _height = height;
  set specialtyType(SpecialtyType specialtyType) =>
      _specialtyType = specialtyType;

}
