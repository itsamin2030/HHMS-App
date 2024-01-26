// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppointmentStruct extends FFFirebaseStruct {
  AppointmentStruct({
    int? id,
    String? appDatetime,
    String? statue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _appDatetime = appDatetime,
        _statue = statue,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "app_datetime" field.
  String? _appDatetime;
  String get appDatetime => _appDatetime ?? '';
  set appDatetime(String? val) => _appDatetime = val;
  bool hasAppDatetime() => _appDatetime != null;

  // "statue" field.
  String? _statue;
  String get statue => _statue ?? '';
  set statue(String? val) => _statue = val;
  bool hasStatue() => _statue != null;

  static AppointmentStruct fromMap(Map<String, dynamic> data) =>
      AppointmentStruct(
        id: castToType<int>(data['id']),
        appDatetime: data['app_datetime'] as String?,
        statue: data['statue'] as String?,
      );

  static AppointmentStruct? maybeFromMap(dynamic data) => data is Map
      ? AppointmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'app_datetime': _appDatetime,
        'statue': _statue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'app_datetime': serializeParam(
          _appDatetime,
          ParamType.String,
        ),
        'statue': serializeParam(
          _statue,
          ParamType.String,
        ),
      }.withoutNulls;

  static AppointmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      AppointmentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        appDatetime: deserializeParam(
          data['app_datetime'],
          ParamType.String,
          false,
        ),
        statue: deserializeParam(
          data['statue'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AppointmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AppointmentStruct &&
        id == other.id &&
        appDatetime == other.appDatetime &&
        statue == other.statue;
  }

  @override
  int get hashCode => const ListEquality().hash([id, appDatetime, statue]);
}

AppointmentStruct createAppointmentStruct({
  int? id,
  String? appDatetime,
  String? statue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AppointmentStruct(
      id: id,
      appDatetime: appDatetime,
      statue: statue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AppointmentStruct? updateAppointmentStruct(
  AppointmentStruct? appointment, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    appointment
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAppointmentStructData(
  Map<String, dynamic> firestoreData,
  AppointmentStruct? appointment,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (appointment == null) {
    return;
  }
  if (appointment.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && appointment.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final appointmentData =
      getAppointmentFirestoreData(appointment, forFieldValue);
  final nestedData =
      appointmentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = appointment.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAppointmentFirestoreData(
  AppointmentStruct? appointment, [
  bool forFieldValue = false,
]) {
  if (appointment == null) {
    return {};
  }
  final firestoreData = mapToFirestore(appointment.toMap());

  // Add any Firestore field values
  appointment.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAppointmentListFirestoreData(
  List<AppointmentStruct>? appointments,
) =>
    appointments?.map((e) => getAppointmentFirestoreData(e, true)).toList() ??
    [];
