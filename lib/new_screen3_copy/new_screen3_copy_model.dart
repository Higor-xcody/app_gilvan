import '/components/stock_item_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'new_screen3_copy_widget.dart' show NewScreen3CopyWidget;
import 'package:flutter/material.dart';

class NewScreen3CopyModel extends FlutterFlowModel<NewScreen3CopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  var qr = '';
  // Models for StockItemCard.
  late FlutterFlowDynamicModels<StockItemCardModel> stockItemCardModels;

  @override
  void initState(BuildContext context) {
    stockItemCardModels = FlutterFlowDynamicModels(() => StockItemCardModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    stockItemCardModels.dispose();
  }
}
