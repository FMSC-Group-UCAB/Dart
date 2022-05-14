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
  late CasefileAlbumin _albumin;
  late CasefileCholesterol _cholesterol;

  //Constructor

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
          id,
          personalBg,
          bloodPressure,
          heartRate,
          saturation,
          height,
          specialtyType,
        );

  //Aplicacion del patron de diseño factory

  static CasefileCardiologist create(
    CasefileId id,
    CasefilePersonalBg personalBg,
    CasefileBloodPressure bloodPressure,
    CasefileHeartRate heartRate,
    CasefileSaturation saturation,
    CasefileHeight height,
    SpecialtyType specialtyType,
    CasefileAlbumin albumin,
    CasefileCholesterol cholesterol,
  ) {
    return CasefileCardiologist(
      id: id,
      personalBg: personalBg,
      bloodPressure: bloodPressure,
      heartRate: heartRate,
      saturation: saturation,
      height: height,
      specialtyType: specialtyType,
      albumin: albumin,
      cholesterol: cholesterol,
    );
  }


  //Getters
  CasefileAlbumin get Albumin => _albumin;

  CasefileCholesterol get Cholesterol => _cholesterol;

  //Setters
  set Albumin(CasefileAlbumin albumin) => _albumin = albumin;

  set Cholesterol(CasefileCholesterol cholesterol) =>
      _cholesterol = cholesterol;

  //Metodos

  @override
  updateCasefile(Casefile other) {}

  @override
  void fromSpecialty(SpecialtyType specialtyType, object) {}
}
