import '../database.dart';

class MassasTable extends SupabaseTable<MassasRow> {
  @override
  String get tableName => 'massas';

  @override
  MassasRow createRow(Map<String, dynamic> data) => MassasRow(data);
}

class MassasRow extends SupabaseDataRow {
  MassasRow(super.data);

  @override
  SupabaseTable get table => MassasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeMassa => getField<String>('nome_massa');
  set nomeMassa(String? value) => setField<String>('nome_massa', value);

  double? get precoMassa => getField<double>('preco_massa');
  set precoMassa(double? value) => setField<double>('preco_massa', value);
}
