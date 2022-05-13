import '../valueobjects/casefile_BloodPressure.dart';
import '../valueobjects/casefile_PersonalBg.dart';
import '../valueobjects/casefile_Height.dart';
import '../valueobjects/casefile_Saturation.dart';
import '../valueobjects/casefile_HeartRate.dart';
import '../valueobjects/casefile_id.dart';
import '../enumerations/specialtyType.enum.dart';

abstract class Casefile {
  //Atributos
  CasefileId? id;
  CasefilePersonalBg? personalBg;
  CasefileBloodPressure? bloodPressure;
  CasefileHeartRate? heartRate;
  CasefileSaturation? saturation;
  CasefileHeight? height;
  SpecialtyType? specialtyType;
  //Constructor
  Casefile(
      {required id,
      required personalBg,
      required bloodPressure,
      required heartRate,
      required saturation,
      required height,
      required specialtyType})
      : id = id,
        personalBg = personalBg,
        bloodPressure = bloodPressure,
        heartRate = heartRate,
        saturation = saturation,
        height = height,
        specialtyType = specialtyType;
  //Métodos
  updateCasefile(Casefile other);
  //Agregar Static
  void fromSpecialty(SpecialtyType specialtyType, object);
}
