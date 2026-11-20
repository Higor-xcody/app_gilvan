import '../database.dart';

class StockMovementsTable extends SupabaseTable<StockMovementsRow> {
  @override
  String get tableName => 'stock_movements';

  @override
  StockMovementsRow createRow(Map<String, dynamic> data) =>
      StockMovementsRow(data);
}

class StockMovementsRow extends SupabaseDataRow {
  StockMovementsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StockMovementsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);

  double get previousStock => getField<double>('previous_stock')!;
  set previousStock(double value) => setField<double>('previous_stock', value);

  double get currentStock => getField<double>('current_stock')!;
  set currentStock(double value) => setField<double>('current_stock', value);

  String? get responsibleUser => getField<String>('responsible_user');
  set responsibleUser(String? value) =>
      setField<String>('responsible_user', value);

  String? get destination => getField<String>('destination');
  set destination(String? value) => setField<String>('destination', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get movementDate => getField<DateTime>('movement_date');
  set movementDate(DateTime? value) =>
      setField<DateTime>('movement_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
