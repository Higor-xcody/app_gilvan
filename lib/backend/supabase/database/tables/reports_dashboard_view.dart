import '../database.dart';

class ReportsDashboardViewTable extends SupabaseTable<ReportsDashboardViewRow> {
  @override
  String get tableName => 'reports_dashboard_view';

  @override
  ReportsDashboardViewRow createRow(Map<String, dynamic> data) =>
      ReportsDashboardViewRow(data);
}

class ReportsDashboardViewRow extends SupabaseDataRow {
  ReportsDashboardViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReportsDashboardViewTable();

  int? get activeProducts => getField<int>('active_products');
  set activeProducts(int? value) => setField<int>('active_products', value);

  int? get criticalProducts => getField<int>('critical_products');
  set criticalProducts(int? value) => setField<int>('critical_products', value);

  double? get monthlyEntries => getField<double>('monthly_entries');
  set monthlyEntries(double? value) =>
      setField<double>('monthly_entries', value);

  double? get monthlyOutputs => getField<double>('monthly_outputs');
  set monthlyOutputs(double? value) =>
      setField<double>('monthly_outputs', value);

  String? get topProduct => getField<String>('top_product');
  set topProduct(String? value) => setField<String>('top_product', value);

  double? get topProductQuantity => getField<double>('top_product_quantity');
  set topProductQuantity(double? value) =>
      setField<double>('top_product_quantity', value);

  DateTime? get lastMovementDate => getField<DateTime>('last_movement_date');
  set lastMovementDate(DateTime? value) =>
      setField<DateTime>('last_movement_date', value);
}
