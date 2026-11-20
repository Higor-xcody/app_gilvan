import '../database.dart';

class ProdutosMaisUsadosTable extends SupabaseTable<ProdutosMaisUsadosRow> {
  @override
  String get tableName => 'produtos_mais_usados';

  @override
  ProdutosMaisUsadosRow createRow(Map<String, dynamic> data) =>
      ProdutosMaisUsadosRow(data);
}

class ProdutosMaisUsadosRow extends SupabaseDataRow {
  ProdutosMaisUsadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProdutosMaisUsadosTable();

  int? get posicao => getField<int>('posicao');
  set posicao(int? value) => setField<int>('posicao', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get unidade => getField<String>('unidade');
  set unidade(String? value) => setField<String>('unidade', value);

  double? get quantidade => getField<double>('quantidade');
  set quantidade(double? value) => setField<double>('quantidade', value);

  double? get valorGrafico => getField<double>('valor_grafico');
  set valorGrafico(double? value) => setField<double>('valor_grafico', value);
}
