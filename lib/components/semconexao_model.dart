import '/components/button10_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'semconexao_widget.dart' show SemconexaoWidget;
import 'package:flutter/material.dart';

class SemconexaoModel extends FlutterFlowModel<SemconexaoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button10Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button10Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
