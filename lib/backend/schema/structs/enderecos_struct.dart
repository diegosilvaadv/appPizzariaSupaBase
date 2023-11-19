// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecosStruct extends BaseStruct {
  EnderecosStruct({
    String? endereco,
    String? cep,
    String? bairro,
    String? cidade,
    String? uf,
    String? complemento,
  })  : _endereco = endereco,
        _cep = cep,
        _bairro = bairro,
        _cidade = cidade,
        _uf = uf,
        _complemento = complemento;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;
  bool hasEndereco() => _endereco != null;

  // "Cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;
  bool hasCep() => _cep != null;

  // "Bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;
  bool hasBairro() => _bairro != null;

  // "Cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;
  bool hasCidade() => _cidade != null;

  // "UF" field.
  String? _uf;
  String get uf => _uf ?? '';
  set uf(String? val) => _uf = val;
  bool hasUf() => _uf != null;

  // "Complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;
  bool hasComplemento() => _complemento != null;

  static EnderecosStruct fromMap(Map<String, dynamic> data) => EnderecosStruct(
        endereco: data['endereco'] as String?,
        cep: data['Cep'] as String?,
        bairro: data['Bairro'] as String?,
        cidade: data['Cidade'] as String?,
        uf: data['UF'] as String?,
        complemento: data['Complemento'] as String?,
      );

  static EnderecosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EnderecosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'endereco': _endereco,
        'Cep': _cep,
        'Bairro': _bairro,
        'Cidade': _cidade,
        'UF': _uf,
        'Complemento': _complemento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'Cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'Bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'Cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'UF': serializeParam(
          _uf,
          ParamType.String,
        ),
        'Complemento': serializeParam(
          _complemento,
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
        cep: deserializeParam(
          data['Cep'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['Bairro'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['Cidade'],
          ParamType.String,
          false,
        ),
        uf: deserializeParam(
          data['UF'],
          ParamType.String,
          false,
        ),
        complemento: deserializeParam(
          data['Complemento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EnderecosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EnderecosStruct &&
        endereco == other.endereco &&
        cep == other.cep &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        uf == other.uf &&
        complemento == other.complemento;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([endereco, cep, bairro, cidade, uf, complemento]);
}

EnderecosStruct createEnderecosStruct({
  String? endereco,
  String? cep,
  String? bairro,
  String? cidade,
  String? uf,
  String? complemento,
}) =>
    EnderecosStruct(
      endereco: endereco,
      cep: cep,
      bairro: bairro,
      cidade: cidade,
      uf: uf,
      complemento: complemento,
    );
