import '/components/report_card_widget.dart';
import '/components/stat_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'reports_and_analytics_widget.dart' show ReportsAndAnalyticsWidget;
import 'package:flutter/material.dart';

class ReportsAndAnalyticsModel
    extends FlutterFlowModel<ReportsAndAnalyticsWidget> {
  ///  Local state fields for this page.

  String grafico = 'entradas';

  ///  State fields for stateful widgets in this page.

  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Models for StatRow.
  late FlutterFlowDynamicModels<StatRowModel> statRowModels;
  // Model for ReportCard.
  late ReportCardModel reportCardModel1;
  // Stores action output result for [Custom Action - gerarPdfTeste] action in ReportCard widget.
  String? teste;
  // Model for ReportCard.
  late ReportCardModel reportCardModel2;
  // Model for ReportCard.
  late ReportCardModel reportCardModel3;
  // Model for ReportCard.
  late ReportCardModel reportCardModel4;

  @override
  void initState(BuildContext context) {
    statRowModels = FlutterFlowDynamicModels(() => StatRowModel());
    reportCardModel1 = createModel(context, () => ReportCardModel());
    reportCardModel2 = createModel(context, () => ReportCardModel());
    reportCardModel3 = createModel(context, () => ReportCardModel());
    reportCardModel4 = createModel(context, () => ReportCardModel());
  }

  @override
  void dispose() {
    statRowModels.dispose();
    reportCardModel1.dispose();
    reportCardModel2.dispose();
    reportCardModel3.dispose();
    reportCardModel4.dispose();
  }
}
