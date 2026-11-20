import '/components/activity_row_widget.dart';
import '/components/button3_widget.dart';
import '/components/metric_tile_widget.dart';
import '/components/quick_action_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MetricTile.
  late MetricTileModel metricTileModel1;
  // Model for MetricTile.
  late MetricTileModel metricTileModel2;
  // Model for MetricTile.
  late MetricTileModel metricTileModel3;
  // Model for MetricTile.
  late MetricTileModel metricTileModel4;
  // Model for QuickAction.
  late QuickActionModel quickActionModel1;
  // Model for QuickAction.
  late QuickActionModel quickActionModel2;
  // Model for QuickAction.
  late QuickActionModel quickActionModel3;
  // Model for Button.
  late Button3Model buttonModel;
  // Models for ActivityRow.
  late FlutterFlowDynamicModels<ActivityRowModel> activityRowModels;

  @override
  void initState(BuildContext context) {
    metricTileModel1 = createModel(context, () => MetricTileModel());
    metricTileModel2 = createModel(context, () => MetricTileModel());
    metricTileModel3 = createModel(context, () => MetricTileModel());
    metricTileModel4 = createModel(context, () => MetricTileModel());
    quickActionModel1 = createModel(context, () => QuickActionModel());
    quickActionModel2 = createModel(context, () => QuickActionModel());
    quickActionModel3 = createModel(context, () => QuickActionModel());
    buttonModel = createModel(context, () => Button3Model());
    activityRowModels = FlutterFlowDynamicModels(() => ActivityRowModel());
  }

  @override
  void dispose() {
    metricTileModel1.dispose();
    metricTileModel2.dispose();
    metricTileModel3.dispose();
    metricTileModel4.dispose();
    quickActionModel1.dispose();
    quickActionModel2.dispose();
    quickActionModel3.dispose();
    buttonModel.dispose();
    activityRowModels.dispose();
  }
}
