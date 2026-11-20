import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/components/form_field_label_widget.dart';
import '/components/form_section_widget.dart';
import '/components/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'creante_product_widget.dart' show CreanteProductWidget;
import 'package:flutter/material.dart';

class CreanteProductModel extends FlutterFlowModel<CreanteProductWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FormSection.
  late FormSectionModel formSectionModel1;
  // Model for nome.
  late TextFieldModel nomeModel;
  // Model for FormFieldLabel.
  late FormFieldLabelModel formFieldLabelModel1;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // Model for FormFieldLabel.
  late FormFieldLabelModel formFieldLabelModel2;
  // State field(s) for unidade widget.
  String? unidadeValue;
  FormFieldController<String>? unidadeValueController;
  // Model for FormSection.
  late FormSectionModel formSectionModel2;
  // Model for qtd_inicial.
  late TextFieldModel qtdInicialModel;
  // Model for qtd_minima.
  late TextFieldModel qtdMinimaModel;
  // Model for md_mensal.
  late TextFieldModel mdMensalModel;
  // Model for FormSection.
  late FormSectionModel formSectionModel3;
  // Model for observacoes.
  late TextFieldModel observacoesModel;
  var teste = '';
  // Model for Button.
  late ButtonModel buttonModel;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CategoriesRow>? categoria;

  @override
  void initState(BuildContext context) {
    formSectionModel1 = createModel(context, () => FormSectionModel());
    nomeModel = createModel(context, () => TextFieldModel());
    formFieldLabelModel1 = createModel(context, () => FormFieldLabelModel());
    formFieldLabelModel2 = createModel(context, () => FormFieldLabelModel());
    formSectionModel2 = createModel(context, () => FormSectionModel());
    qtdInicialModel = createModel(context, () => TextFieldModel());
    qtdMinimaModel = createModel(context, () => TextFieldModel());
    mdMensalModel = createModel(context, () => TextFieldModel());
    formSectionModel3 = createModel(context, () => FormSectionModel());
    observacoesModel = createModel(context, () => TextFieldModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    formSectionModel1.dispose();
    nomeModel.dispose();
    formFieldLabelModel1.dispose();
    formFieldLabelModel2.dispose();
    formSectionModel2.dispose();
    qtdInicialModel.dispose();
    qtdMinimaModel.dispose();
    mdMensalModel.dispose();
    formSectionModel3.dispose();
    observacoesModel.dispose();
    buttonModel.dispose();
  }
}
