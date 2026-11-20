import '/flutter_flow/flutter_flow_util.dart';
import 'text_field4_copy_widget.dart' show TextField4CopyWidget;
import 'package:flutter/material.dart';

class TextField4CopyModel extends FlutterFlowModel<TextField4CopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  late FocusNode inputPasswordVisibilityFocusNode;
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  late bool inputVisibility;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {
    inputPasswordVisibilityFocusNode = FocusNode();
    inputVisibility = false;
  }

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
    inputPasswordVisibilityFocusNode.dispose();
  }
}
