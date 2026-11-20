import '/components/button12_widget.dart';
import '/components/radio_widget.dart';
import '/components/settings_section_header2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tema_widget.dart' show TemaWidget;
import 'package:flutter/material.dart';

class TemaModel extends FlutterFlowModel<TemaWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SettingsSectionHeader.
  late SettingsSectionHeader2Model settingsSectionHeaderModel;
  // Model for Radio.
  late RadioModel radioModel1;
  // Model for Radio.
  late RadioModel radioModel2;
  // Model for Radio.
  late RadioModel radioModel3;
  // Model for Button.
  late Button12Model buttonModel;

  @override
  void initState(BuildContext context) {
    settingsSectionHeaderModel =
        createModel(context, () => SettingsSectionHeader2Model());
    radioModel1 = createModel(context, () => RadioModel());
    radioModel2 = createModel(context, () => RadioModel());
    radioModel3 = createModel(context, () => RadioModel());
    buttonModel = createModel(context, () => Button12Model());
  }

  @override
  void dispose() {
    settingsSectionHeaderModel.dispose();
    radioModel1.dispose();
    radioModel2.dispose();
    radioModel3.dispose();
    buttonModel.dispose();
  }
}
