import '../database.dart';

class NumbersPedTable extends SupabaseTable<NumbersPedRow> {
  @override
  String get tableName => 'NumbersPed';

  @override
  NumbersPedRow createRow(Map<String, dynamic> data) => NumbersPedRow(data);
}

class NumbersPedRow extends SupabaseDataRow {
  NumbersPedRow(super.data);

  @override
  SupabaseTable get table => NumbersPedTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get referencia => getField<int>('referencia');
  set referencia(int? value) => setField<int>('referencia', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get numeroPedido => getField<int>('numero_pedido');
  set numeroPedido(int? value) => setField<int>('numero_pedido', value);
}
