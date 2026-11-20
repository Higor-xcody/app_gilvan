import '../database.dart';

class MovimentacaoMensalTable extends SupabaseTable<MovimentacaoMensalRow> {
  @override
  String get tableName => 'movimentacao_mensal';

  @override
  MovimentacaoMensalRow createRow(Map<String, dynamic> data) =>
      MovimentacaoMensalRow(data);
}

class MovimentacaoMensalRow extends SupabaseDataRow {
  MovimentacaoMensalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MovimentacaoMensalTable();

  List<String> get meses => getListField<String>('meses');
  set meses(List<String>? value) => setListField<String>('meses', value);

  List<double> get entradas => getListField<double>('entradas');
  set entradas(List<double>? value) => setListField<double>('entradas', value);

  List<double> get saidas => getListField<double>('saidas');
  set saidas(List<double>? value) => setListField<double>('saidas', value);
}
