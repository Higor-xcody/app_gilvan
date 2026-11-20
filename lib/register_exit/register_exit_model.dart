import '/components/button6_widget.dart';
import '/components/form_field_label4_widget.dart';
import '/components/quantidade_widget.dart';
import '/components/tempo_widget.dart';
import '/components/text_field5_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_exit_widget.dart' show RegisterExitWidget;
import 'package:flutter/material.dart';

class RegisterExitModel extends FlutterFlowModel<RegisterExitWidget> {
  ///  Local state fields for this page.

  String id = '0';

  ///  State fields for stateful widgets in this page.

  // Model for FormFieldLabel.
  late FormFieldLabel4Model formFieldLabelModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for FormFieldLabel.
  late FormFieldLabel4Model formFieldLabelModel2;
  // Model for quantidade component.
  late QuantidadeModel quantidadeModel;
  // Model for FormFieldLabel.
  late FormFieldLabel4Model formFieldLabelModel3;
  // Model for tempo component.
  late TempoModel tempoModel;
  // Model for FormFieldLabel.
  late FormFieldLabel4Model formFieldLabelModel4;
  // Model for destino.
  late TextField5Model destinoModel;
  // Model for FormFieldLabel.
  late FormFieldLabel4Model formFieldLabelModel5;
  // Model for observacao.
  late TextField5Model observacaoModel;
  // Model for Button.
  late Button6Model buttonModel;

  @override
  void initState(BuildContext context) {
    formFieldLabelModel1 = createModel(context, () => FormFieldLabel4Model());
    formFieldLabelModel2 = createModel(context, () => FormFieldLabel4Model());
    quantidadeModel = createModel(context, () => QuantidadeModel());
    formFieldLabelModel3 = createModel(context, () => FormFieldLabel4Model());
    tempoModel = createModel(context, () => TempoModel());
    formFieldLabelModel4 = createModel(context, () => FormFieldLabel4Model());
    destinoModel = createModel(context, () => TextField5Model());
    formFieldLabelModel5 = createModel(context, () => FormFieldLabel4Model());
    observacaoModel = createModel(context, () => TextField5Model());
    buttonModel = createModel(context, () => Button6Model());
  }

  @override
  void dispose() {
    formFieldLabelModel1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    formFieldLabelModel2.dispose();
    quantidadeModel.dispose();
    formFieldLabelModel3.dispose();
    tempoModel.dispose();
    formFieldLabelModel4.dispose();
    destinoModel.dispose();
    formFieldLabelModel5.dispose();
    observacaoModel.dispose();
    buttonModel.dispose();
  }
}
