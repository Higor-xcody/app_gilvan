import '../database.dart';

class RequestItemsTable extends SupabaseTable<RequestItemsRow> {
  @override
  String get tableName => 'request_items';

  @override
  RequestItemsRow createRow(Map<String, dynamic> data) => RequestItemsRow(data);
}

class RequestItemsRow extends SupabaseDataRow {
  RequestItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RequestItemsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get requestId => getField<String>('request_id')!;
  set requestId(String value) => setField<String>('request_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);
}
