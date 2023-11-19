// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecosStruct extends BaseStruct {
  EnderecosStruct({
    String? endereco,
  }) : _endereco = endereco;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;
  bool hasEndereco() => _endereco != null;

  static EnderecosStruct fromMap(Map<String, dynamic> data) => EnderecosStruct(
        endereco: data['endereco'] as String?,
      );

  static EnderecosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EnderecosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'endereco': _endereco,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
      }.withoutNulls;

  static EnderecosStruct fromSerializableMap(Map<String, dynamic> data) =>
      EnderecosStruct(
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EnderecosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EnderecosStruct && endereco == other.endereco;
  }

  @override
  int get hashCode => const ListEquality().hash([endereco]);
}

EnderecosStruct createEnderecosStruct({
  String? endereco,
}) =>
    EnderecosStruct(
      endereco: endereco,
    );
