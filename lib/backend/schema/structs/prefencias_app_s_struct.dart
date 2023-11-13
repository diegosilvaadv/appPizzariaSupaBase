// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrefenciasAppSStruct extends BaseStruct {
  PrefenciasAppSStruct({
    String? nomeMassa,
    double? valorMassa,
  })  : _nomeMassa = nomeMassa,
        _valorMassa = valorMassa;

  // "nome_massa" field.
  String? _nomeMassa;
  String get nomeMassa => _nomeMassa ?? '';
  set nomeMassa(String? val) => _nomeMassa = val;
  bool hasNomeMassa() => _nomeMassa != null;

  // "valor_massa" field.
  double? _valorMassa;
  double get valorMassa => _valorMassa ?? 0.0;
  set valorMassa(double? val) => _valorMassa = val;
  void incrementValorMassa(double amount) => _valorMassa = valorMassa + amount;
  bool hasValorMassa() => _valorMassa != null;

  static PrefenciasAppSStruct fromMap(Map<String, dynamic> data) =>
      PrefenciasAppSStruct(
        nomeMassa: data['nome_massa'] as String?,
        valorMassa: castToType<double>(data['valor_massa']),
      );

  static PrefenciasAppSStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PrefenciasAppSStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome_massa': _nomeMassa,
        'valor_massa': _valorMassa,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_massa': serializeParam(
          _nomeMassa,
          ParamType.String,
        ),
        'valor_massa': serializeParam(
          _valorMassa,
          ParamType.double,
        ),
      }.withoutNulls;

  static PrefenciasAppSStruct fromSerializableMap(Map<String, dynamic> data) =>
      PrefenciasAppSStruct(
        nomeMassa: deserializeParam(
          data['nome_massa'],
          ParamType.String,
          false,
        ),
        valorMassa: deserializeParam(
          data['valor_massa'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PrefenciasAppSStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PrefenciasAppSStruct &&
        nomeMassa == other.nomeMassa &&
        valorMassa == other.valorMassa;
  }

  @override
  int get hashCode => const ListEquality().hash([nomeMassa, valorMassa]);
}

PrefenciasAppSStruct createPrefenciasAppSStruct({
  String? nomeMassa,
  double? valorMassa,
}) =>
    PrefenciasAppSStruct(
      nomeMassa: nomeMassa,
      valorMassa: valorMassa,
    );
