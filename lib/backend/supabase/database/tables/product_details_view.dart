import '../database.dart';

class ProductDetailsViewTable extends SupabaseTable<ProductDetailsViewRow> {
  @override
  String get tableName => 'product_details_view';

  @override
  ProductDetailsViewRow createRow(Map<String, dynamic> data) =>
      ProductDetailsViewRow(data);
}

class ProductDetailsViewRow extends SupabaseDataRow {
  ProductDetailsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductDetailsViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get categoryNome => getField<String>('category_nome');
  set categoryNome(String? value) => setField<String>('category_nome', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  double? get currentStock => getField<double>('current_stock');
  set currentStock(double? value) => setField<double>('current_stock', value);

  double? get minimumStock => getField<double>('minimum_stock');
  set minimumStock(double? value) => setField<double>('minimum_stock', value);

  double? get averageMonthlyUsage => getField<double>('average_monthly_usage');
  set averageMonthlyUsage(double? value) =>
      setField<double>('average_monthly_usage', value);

  String? get stockStatus => getField<String>('stock_status');
  set stockStatus(String? value) => setField<String>('stock_status', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  DateTime? get lastEntry => getField<DateTime>('last_entry');
  set lastEntry(DateTime? value) => setField<DateTime>('last_entry', value);

  DateTime? get lastOutput => getField<DateTime>('last_output');
  set lastOutput(DateTime? value) => setField<DateTime>('last_output', value);

  double? get monthlyEntries => getField<double>('monthly_entries');
  set monthlyEntries(double? value) =>
      setField<double>('monthly_entries', value);

  double? get monthlyOutputs => getField<double>('monthly_outputs');
  set monthlyOutputs(double? value) =>
      setField<double>('monthly_outputs', value);

  String? get stockTurnover => getField<String>('stock_turnover');
  set stockTurnover(String? value) => setField<String>('stock_turnover', value);
}
