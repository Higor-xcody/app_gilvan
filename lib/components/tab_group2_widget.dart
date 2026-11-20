import '/components/tab_item2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tab_group2_model.dart';
export 'tab_group2_model.dart';

class TabGroup2Widget extends StatefulWidget {
  const TabGroup2Widget({
    super.key,
    String? label1,
    String? label2,
    bool? label2Present,
  })  : this.label1 = label1 ?? 'Entrar',
        this.label2 = label2 ?? 'Criar Conta',
        this.label2Present = label2Present ?? true;

  final String label1;
  final String label2;
  final bool label2Present;

  @override
  State<TabGroup2Widget> createState() => _TabGroup2WidgetState();
}

class _TabGroup2WidgetState extends State<TabGroup2Widget> {
  late TabGroup2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabGroup2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: wrapWithModel(
                model: _model.tabItemModel1,
                updateCallback: () => safeSetState(() {}),
                child: TabItem2Widget(
                  label: valueOrDefault<String>(
                    widget.label1,
                    'Entrar',
                  ),
                  selected: widget.label2Present == true ? false : true,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: wrapWithModel(
                model: _model.tabItemModel2,
                updateCallback: () => safeSetState(() {}),
                child: TabItem2Widget(
                  label: valueOrDefault<String>(
                    widget.label2,
                    'Criar Conta',
                  ),
                  selected: widget.label2Present == true ? true : false,
                ),
              ),
            ),
          ].divide(SizedBox(width: 0.0)),
        ),
      ),
    );
  }
}
