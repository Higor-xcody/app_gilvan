import '../database.dart';

class ListaEstoqueTable extends SupabaseTable<ListaEstoqueRow> {
  @override
  String get tableName => 'lista_estoque';

  @override
  ListaEstoqueRow createRow(Map<String, dynamic> data) => ListaEstoqueRow(data);
}

class ListaEstoqueRow extends SupabaseDataRow {
  ListaEstoqueRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListaEstoqueTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  double? get quantidade => getField<double>('quantidade');
  set quantidade(double? value) => setField<double>('quantidade', value);

  String? get unidade => getField<String>('unidade');
  set unidade(String? value) => setField<String>('unidade', value);

  double? get quantidadeMinima => getField<double>('quantidade_minima');
  set quantidadeMinima(double? value) =>
      setField<double>('quantidade_minima', value);

  String? get statusEstoque => getField<String>('status_estoque');
  set statusEstoque(String? value) => setField<String>('status_estoque', value);
}
