import '/components/tab_item2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tab_group2_widget.dart' show TabGroup2Widget;
import 'package:flutter/material.dart';

class TabGroup2Model extends FlutterFlowModel<TabGroup2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for TabItem.
  late TabItem2Model tabItemModel1;
  // Model for TabItem.
  late TabItem2Model tabItemModel2;

  @override
  void initState(BuildContext context) {
    tabItemModel1 = createModel(context, () => TabItem2Model());
    tabItemModel2 = createModel(context, () => TabItem2Model());
  }

  @override
  void dispose() {
    tabItemModel1.dispose();
    tabItemModel2.dispose();
  }
}
