import '/flutter_flow/flutter_flow_util.dart';
import 'quantidade_widget.dart' show QuantidadeWidget;
import 'package:flutter/material.dart';

class QuantidadeModel extends FlutterFlowModel<QuantidadeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
