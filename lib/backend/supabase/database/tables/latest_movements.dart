import '../database.dart';

class LatestMovementsTable extends SupabaseTable<LatestMovementsRow> {
  @override
  String get tableName => 'latest_movements';

  @override
  LatestMovementsRow createRow(Map<String, dynamic> data) =>
      LatestMovementsRow(data);
}

class LatestMovementsRow extends SupabaseDataRow {
  LatestMovementsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LatestMovementsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get categoryNome => getField<String>('category_nome');
  set categoryNome(String? value) => setField<String>('category_nome', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get operationSymbol => getField<String>('operation_symbol');
  set operationSymbol(String? value) =>
      setField<String>('operation_symbol', value);

  String? get operationColor => getField<String>('operation_color');
  set operationColor(String? value) =>
      setField<String>('operation_color', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  double? get previousStock => getField<double>('previous_stock');
  set previousStock(double? value) => setField<double>('previous_stock', value);

  double? get currentStock => getField<double>('current_stock');
  set currentStock(double? value) => setField<double>('current_stock', value);

  String? get destination => getField<String>('destination');
  set destination(String? value) => setField<String>('destination', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get movementDate => getField<DateTime>('movement_date');
  set movementDate(DateTime? value) =>
      setField<DateTime>('movement_date', value);
}
