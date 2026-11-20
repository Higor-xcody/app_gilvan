import '../database.dart';

class DashboardStatsTable extends SupabaseTable<DashboardStatsRow> {
  @override
  String get tableName => 'dashboard_stats';

  @override
  DashboardStatsRow createRow(Map<String, dynamic> data) =>
      DashboardStatsRow(data);
}

class DashboardStatsRow extends SupabaseDataRow {
  DashboardStatsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DashboardStatsTable();

  int? get activeItems => getField<int>('active_items');
  set activeItems(int? value) => setField<int>('active_items', value);

  int? get criticalStock => getField<int>('critical_stock');
  set criticalStock(int? value) => setField<int>('critical_stock', value);

  double? get monthlyInputs => getField<double>('monthly_inputs');
  set monthlyInputs(double? value) => setField<double>('monthly_inputs', value);

  double? get monthlyOutputs => getField<double>('monthly_outputs');
  set monthlyOutputs(double? value) =>
      setField<double>('monthly_outputs', value);
}
