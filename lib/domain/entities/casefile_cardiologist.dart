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
import '../valueobjects/casefile/casefile_range.dart';
import 'doctor.dart';
import 'patient.dart';

/// Clase para el manejo de las historias medicas relacionadas con cardilogia

class CasefileCardiologist extends Casefile {
  late CasefileAlbumin _albumin;
  late CasefileCholesterol _cholesterol;

  //Getters
  CasefileAlbumin get Albumin => _albumin;
  CasefileCholesterol get Cholesterol => _cholesterol;

  //Constructor

  CasefileCardiologist({
    required CasefileId id,
    required Patient patient,
    required Doctor doctor,
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
          patient,
          doctor,
          personalBg,
          bloodPressure,
          heartRate,
          saturation,
          height,
          specialtyType,
        );

  ///Aplicacion del patron de diseño factory
  /// Recibe [id], [personalBg], [bloodPressure], [heartRate], [saturation], [height], [specialtyType], [cholesterol] y [albumin] como parametros
  /// Crea una instancia de [CasefileCardiologist]
  static CasefileCardiologist create(
    CasefileId id,
    Patient patient,
    Doctor doctor,
    CasefilePersonalBg personalBg,
    CasefileBloodPressure bloodPressure,
    CasefileHeartRate heartRate,
    CasefileSaturation saturation,
    CasefileHeight height,
    SpecialtyType specialtyType,
    String albumin,
    int cholesterol,
  ) {
    return CasefileCardiologist(
      id: id,
      patient: patient,
      doctor: doctor,
      personalBg: personalBg,
      bloodPressure: bloodPressure,
      heartRate: heartRate,
      saturation: saturation,
      height: height,
      specialtyType: specialtyType,
      albumin: CasefileAlbumin.create(albumin, CaseFileRange.create(0, 150)),
      cholesterol:
          CasefileCholesterol.create(cholesterol, CaseFileRange.create(50, 80)),
    );
  }

  /// Recibe una instancia de [dynamic] y la actualiza con los [extras]

  updateExtras(dynamic extras) {
    _albumin =
        CasefileAlbumin.create(extras['albumin'], this._cholesterol.range);
    _cholesterol =
        CasefileCholesterol.create(extras['cholesterol'], this._albumin.range);
  }

  /// Recibe una instancia de [SpecialtyType] y un objeto [object]
  @override
  void fromSpecialty(SpecialtyType specialtyType, object) {}
}
