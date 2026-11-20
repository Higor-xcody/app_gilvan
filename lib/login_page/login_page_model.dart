import '/components/button5_widget.dart';
import '/components/form_field_label3_widget.dart';
import '/components/tab_group2_widget.dart';
import '/components/text_field4_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  bool login = true;

  ///  State fields for stateful widgets in this page.

  // Model for TabGroup.
  late TabGroup2Model tabGroupModel;
  // Model for FormFieldLabel.
  late FormFieldLabel3Model formFieldLabelModel1;
  // State field(s) for email2 widget.
  FocusNode? email2FocusNode;
  TextEditingController? email2TextController;
  String? Function(BuildContext, String?)? email2TextControllerValidator;
  // Model for FormFieldLabel.
  late FormFieldLabel3Model formFieldLabelModel2;
  // State field(s) for senha3 widget.
  late FocusNode senha3PasswordVisibilityFocusNode;
  FocusNode? senha3FocusNode;
  TextEditingController? senha3TextController;
  late bool senha3Visibility;
  String? Function(BuildContext, String?)? senha3TextControllerValidator;
  // Model for FormFieldLabel.
  late FormFieldLabel3Model formFieldLabelModel3;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // Model for FormFieldLabel.
  late FormFieldLabel3Model formFieldLabelModel4;
  // State field(s) for senha1 widget.
  late FocusNode senha1PasswordVisibilityFocusNode;
  FocusNode? senha1FocusNode;
  TextEditingController? senha1TextController;
  late bool senha1Visibility;
  String? Function(BuildContext, String?)? senha1TextControllerValidator;
  // Model for FormFieldLabel.
  late FormFieldLabel3Model formFieldLabelModel5;
  // State field(s) for senha2 widget.
  late FocusNode senha2PasswordVisibilityFocusNode;
  FocusNode? senha2FocusNode;
  TextEditingController? senha2TextController;
  late bool senha2Visibility;
  String? Function(BuildContext, String?)? senha2TextControllerValidator;
  // Model for FormFieldLabel.
  late FormFieldLabel3Model formFieldLabelModel6;
  // Model for nome.
  late TextField4Model nomeModel;
  // Model for FormFieldLabel.
  late FormFieldLabel3Model formFieldLabelModel7;
  // State field(s) for cargo widget.
  String? cargoValue;
  FormFieldController<String>? cargoValueController;
  // Model for Button.
  late Button5Model buttonModel1;
  // Model for Button.
  late Button5Model buttonModel2;

  @override
  void initState(BuildContext context) {
    tabGroupModel = createModel(context, () => TabGroup2Model());
    formFieldLabelModel1 = createModel(context, () => FormFieldLabel3Model());
    formFieldLabelModel2 = createModel(context, () => FormFieldLabel3Model());
    senha3PasswordVisibilityFocusNode = FocusNode();
    senha3Visibility = false;
    formFieldLabelModel3 = createModel(context, () => FormFieldLabel3Model());
    formFieldLabelModel4 = createModel(context, () => FormFieldLabel3Model());
    senha1PasswordVisibilityFocusNode = FocusNode();
    senha1Visibility = false;
    formFieldLabelModel5 = createModel(context, () => FormFieldLabel3Model());
    senha2PasswordVisibilityFocusNode = FocusNode();
    senha2Visibility = false;
    formFieldLabelModel6 = createModel(context, () => FormFieldLabel3Model());
    nomeModel = createModel(context, () => TextField4Model());
    formFieldLabelModel7 = createModel(context, () => FormFieldLabel3Model());
    buttonModel1 = createModel(context, () => Button5Model());
    buttonModel2 = createModel(context, () => Button5Model());
  }

  @override
  void dispose() {
    tabGroupModel.dispose();
    formFieldLabelModel1.dispose();
    email2FocusNode?.dispose();
    email2TextController?.dispose();

    formFieldLabelModel2.dispose();
    senha3FocusNode?.dispose();
    senha3TextController?.dispose();
    senha3PasswordVisibilityFocusNode.dispose();
    formFieldLabelModel3.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    formFieldLabelModel4.dispose();
    senha1FocusNode?.dispose();
    senha1TextController?.dispose();
    senha1PasswordVisibilityFocusNode.dispose();
    formFieldLabelModel5.dispose();
    senha2FocusNode?.dispose();
    senha2TextController?.dispose();
    senha2PasswordVisibilityFocusNode.dispose();
    formFieldLabelModel6.dispose();
    nomeModel.dispose();
    formFieldLabelModel7.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
