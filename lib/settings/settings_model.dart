import '/backend/supabase/supabase.dart';
import '/components/button11_widget.dart';
import '/components/settings_option_widget.dart';
import '/components/settings_section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<UsersRow>>? settingsSupabaseStream;
  // Model for SettingsSectionHeader.
  late SettingsSectionHeaderModel settingsSectionHeaderModel1;
  // Model for SettingsOption.
  late SettingsOptionModel settingsOptionModel1;
  // Model for SettingsOption.
  late SettingsOptionModel settingsOptionModel2;
  // Model for SettingsOption.
  late SettingsOptionModel settingsOptionModel3;
  // Model for SettingsSectionHeader.
  late SettingsSectionHeaderModel settingsSectionHeaderModel2;
  // Model for SettingsOption.
  late SettingsOptionModel settingsOptionModel4;
  // Model for SettingsOption.
  late SettingsOptionModel settingsOptionModel5;
  // Model for Button.
  late Button11Model buttonModel;

  @override
  void initState(BuildContext context) {
    settingsSectionHeaderModel1 =
        createModel(context, () => SettingsSectionHeaderModel());
    settingsOptionModel1 = createModel(context, () => SettingsOptionModel());
    settingsOptionModel2 = createModel(context, () => SettingsOptionModel());
    settingsOptionModel3 = createModel(context, () => SettingsOptionModel());
    settingsSectionHeaderModel2 =
        createModel(context, () => SettingsSectionHeaderModel());
    settingsOptionModel4 = createModel(context, () => SettingsOptionModel());
    settingsOptionModel5 = createModel(context, () => SettingsOptionModel());
    buttonModel = createModel(context, () => Button11Model());
  }

  @override
  void dispose() {
    settingsSectionHeaderModel1.dispose();
    settingsOptionModel1.dispose();
    settingsOptionModel2.dispose();
    settingsOptionModel3.dispose();
    settingsSectionHeaderModel2.dispose();
    settingsOptionModel4.dispose();
    settingsOptionModel5.dispose();
    buttonModel.dispose();
  }
}
