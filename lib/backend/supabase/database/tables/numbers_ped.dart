import '../database.dart';

class NumbersPedTable extends SupabaseTable<NumbersPedRow> {
  @override
  String get tableName => 'NumbersPed';

  @override
  NumbersPedRow createRow(Map<String, dynamic> data) => NumbersPedRow(data);
}

class NumbersPedRow extends SupabaseDataRow {
  NumbersPedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NumbersPedTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get numeroPedido => getField<int>('numero_pedido');
  set numeroPedido(int? value) => setField<int>('numero_pedido', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
