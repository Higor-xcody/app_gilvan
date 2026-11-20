import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings_section_header2_model.dart';
export 'settings_section_header2_model.dart';

class SettingsSectionHeader2Widget extends StatefulWidget {
  const SettingsSectionHeader2Widget({
    super.key,
    String? title,
  }) : this.title = title ?? 'Preferências de Visual';

  final String title;

  @override
  State<SettingsSectionHeader2Widget> createState() =>
      _SettingsSectionHeader2WidgetState();
}

class _SettingsSectionHeader2WidgetState
    extends State<SettingsSectionHeader2Widget> {
  late SettingsSectionHeader2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsSectionHeader2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 8.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget.title,
              'Preferências de Visual',
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).tertiary,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  lineHeight: 1.3,
                ),
          ),
        ),
      ),
    );
  }
}
