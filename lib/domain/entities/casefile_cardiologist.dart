import '../enumerations/specialty_type_enum.dart';
import '../valueobjects/casefile/casefile_albumin.dart';
import '../valueobjects/casefile/casefile_blood_pressure.dart';
import '../valueobjects/casefile/casefile_cholesterol.dart';
import '../valueobjects/casefile/casefile_heart_rate.dart';
import '../valueobjects/casefile/casefile_personal_Bg.dart';
import 'casefile.dart';
import '../valueobjects/casefile/casefile_id.dart';
import '../valueobjects/casefile/casefile_saturation.dart';
import '../valueobjects/casefile/casefile_height.dart';

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

  getAlbumin() => this.albumin;

  getCholesterol() => this.cholesterol;
}
