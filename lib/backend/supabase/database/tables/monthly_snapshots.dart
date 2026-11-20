import '../database.dart';

class MonthlySnapshotsTable extends SupabaseTable<MonthlySnapshotsRow> {
  @override
  String get tableName => 'monthly_snapshots';

  @override
  MonthlySnapshotsRow createRow(Map<String, dynamic> data) =>
      MonthlySnapshotsRow(data);
}

class MonthlySnapshotsRow extends SupabaseDataRow {
  MonthlySnapshotsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonthlySnapshotsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  int get month => getField<int>('month')!;
  set month(int value) => setField<int>('month', value);

  int get year => getField<int>('year')!;
  set year(int value) => setField<int>('year', value);

  double? get initialStock => getField<double>('initial_stock');
  set initialStock(double? value) => setField<double>('initial_stock', value);

  double? get entries => getField<double>('entries');
  set entries(double? value) => setField<double>('entries', value);

  double? get outputs => getField<double>('outputs');
  set outputs(double? value) => setField<double>('outputs', value);

  double? get finalStock => getField<double>('final_stock');
  set finalStock(double? value) => setField<double>('final_stock', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
