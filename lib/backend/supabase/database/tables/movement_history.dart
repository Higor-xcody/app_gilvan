import '../database.dart';

class MovementHistoryTable extends SupabaseTable<MovementHistoryRow> {
  @override
  String get tableName => 'movement_history';

  @override
  MovementHistoryRow createRow(Map<String, dynamic> data) =>
      MovementHistoryRow(data);
}

class MovementHistoryRow extends SupabaseDataRow {
  MovementHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MovementHistoryTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get product => getField<String>('product');
  set product(String? value) => setField<String>('product', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);

  double? get previousStock => getField<double>('previous_stock');
  set previousStock(double? value) => setField<double>('previous_stock', value);

  double? get currentStock => getField<double>('current_stock');
  set currentStock(double? value) => setField<double>('current_stock', value);

  String? get responsible => getField<String>('responsible');
  set responsible(String? value) => setField<String>('responsible', value);

  String? get destination => getField<String>('destination');
  set destination(String? value) => setField<String>('destination', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get movementDate => getField<DateTime>('movement_date');
  set movementDate(DateTime? value) =>
      setField<DateTime>('movement_date', value);
}
