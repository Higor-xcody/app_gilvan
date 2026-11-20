import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  double? get minimumStock => getField<double>('minimum_stock');
  set minimumStock(double? value) => setField<double>('minimum_stock', value);

  double? get averageMonthlyUsage => getField<double>('average_monthly_usage');
  set averageMonthlyUsage(double? value) =>
      setField<double>('average_monthly_usage', value);

  double? get currentStock => getField<double>('current_stock');
  set currentStock(double? value) => setField<double>('current_stock', value);

  String? get barcode => getField<String>('barcode');
  set barcode(String? value) => setField<String>('barcode', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get categoryNome => getField<String>('category_nome');
  set categoryNome(String? value) => setField<String>('category_nome', value);
}
