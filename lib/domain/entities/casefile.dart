import '../enumerations/specialty_type_enum.dart';
import '../valueobjects/casefile/casefile_blood_pressure.dart';
import '../valueobjects/casefile/casefile_personal_Bg.dart';
import '../valueobjects/casefile/casefile_height.dart';
import '../valueobjects/casefile/casefile_saturation.dart';
import '../valueobjects/casefile/casefile_heart_rate.dart';
import '../valueobjects/casefile/casefile_id.dart';

abstract class Casefile {
  //Atributos
  CasefileId id;
  CasefilePersonalBg personalBg;
  CasefileBloodPressure bloodPressure;
  CasefileHeartRate heartRate;
  CasefileSaturation saturation;
  CasefileHeight height;
  SpecialtyType specialtyType;
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

  //Agregar Getters
  //La funcion flecha es porque es un metodo con una sola accion
  CasefileId getId() => this.id;
  CasefilePersonalBg getPersonalBg() => this.personalBg;
  CasefileBloodPressure getBloodPressure() => this.bloodPressure;
  CasefileHeartRate getHeartRate() => this.heartRate;
  CasefileSaturation getSaturation() => this.saturation;
  CasefileHeight getHeight() => this.height;
  SpecialtyType getSpecialtyType() => this.specialtyType;
}
