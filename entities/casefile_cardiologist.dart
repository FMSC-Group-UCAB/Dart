import '../valueobjects/casefile_albumin.dart';
import '../valueobjects/casefile_cholesterol.dart';
import 'casefile.dart';
import '../enumerations/specialtyType.enum.dart';
import '../valueobjects/casefile_id.dart';
import '../valueobjects/casefile_personalBg.dart';
import '../valueobjects/casefile_bloodPressure.dart';
import '../valueobjects/casefile_heartRate.dart';
import '../valueobjects/casefile_saturation.dart';
import '../valueobjects/casefile_height.dart';

class CasefileCardiologist extends Casefile {
  CasefileAlbumin? albumin;
  CasefileCholesterol? cholesterol;

  CasefileCardiologist({
    required CasefileId id,
    required CasefilePersonalBg personalBg,
    required CasefileBloodPressure bloodPressure,
    required CasefileHeartRate heartRate,
    required CasefileSaturation saturation,
    required CasefileHeight height,
    required SpecialtyType specialtyType,
    required CasefileAlbumin albumin,
    required CasefileCholesterol cholesterol,
  }) : super(
            id: id,
            personalBg: personalBg,
            bloodPressure: bloodPressure,
            heartRate: heartRate,
            saturation: saturation,
            height: height,
            specialtyType: specialtyType);

  //Metodos

  @override
  updateCasefile(Casefile other) {}

  @override
  void fromSpecialty(SpecialtyType specialtyType, object) {}
}
