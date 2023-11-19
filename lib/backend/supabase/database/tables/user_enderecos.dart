import '../database.dart';

class UserEnderecosTable extends SupabaseTable<UserEnderecosRow> {
  @override
  String get tableName => 'User_Enderecos';

  @override
  UserEnderecosRow createRow(Map<String, dynamic> data) =>
      UserEnderecosRow(data);
}

class UserEnderecosRow extends SupabaseDataRow {
  UserEnderecosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserEnderecosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get cep => getField<String>('Cep');
  set cep(String? value) => setField<String>('Cep', value);

  String? get endereco => getField<String>('Endereco');
  set endereco(String? value) => setField<String>('Endereco', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
