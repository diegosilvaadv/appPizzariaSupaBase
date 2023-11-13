import '../database.dart';

class PedidosCarrinhoTable extends SupabaseTable<PedidosCarrinhoRow> {
  @override
  String get tableName => 'Pedidos Carrinho';

  @override
  PedidosCarrinhoRow createRow(Map<String, dynamic> data) =>
      PedidosCarrinhoRow(data);
}

class PedidosCarrinhoRow extends SupabaseDataRow {
  PedidosCarrinhoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PedidosCarrinhoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  double? get precoProduto => getField<double>('preco_produto');
  set precoProduto(double? value) => setField<double>('preco_produto', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get quanty => getField<int>('quanty');
  set quanty(int? value) => setField<int>('quanty', value);

  String? get nomeMassa => getField<String>('nome_massa');
  set nomeMassa(String? value) => setField<String>('nome_massa', value);

  double? get precoMassa => getField<double>('preco_massa');
  set precoMassa(double? value) => setField<double>('preco_massa', value);

  int? get numeroPedido => getField<int>('numero_pedido');
  set numeroPedido(int? value) => setField<int>('numero_pedido', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
