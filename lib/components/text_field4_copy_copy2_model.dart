import '/flutter_flow/flutter_flow_util.dart';
import 'text_field4_copy_copy2_widget.dart' show TextField4CopyCopy2Widget;
import 'package:flutter/material.dart';

class TextField4CopyCopy2Model
    extends FlutterFlowModel<TextField4CopyCopy2Widget> {
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
