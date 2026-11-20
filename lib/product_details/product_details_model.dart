import '/components/button4_widget.dart';
import '/components/movement_item_widget.dart';
import '/components/stat_pill_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'product_details_widget.dart' show ProductDetailsWidget;
import 'package:flutter/material.dart';

class ProductDetailsModel extends FlutterFlowModel<ProductDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatPill.
  late StatPillModel statPillModel1;
  // Model for StatPill.
  late StatPillModel statPillModel2;
  // Model for StatPill.
  late StatPillModel statPillModel3;
  // Model for StatPill.
  late StatPillModel statPillModel4;
  // Model for MovementItem.
  late MovementItemModel movementItemModel1;
  // Model for MovementItem.
  late MovementItemModel movementItemModel2;
  // Model for MovementItem.
  late MovementItemModel movementItemModel3;
  // Model for MovementItem.
  late MovementItemModel movementItemModel4;
  // Model for Button.
  late Button4Model buttonModel1;
  // Model for Button.
  late Button4Model buttonModel2;

  @override
  void initState(BuildContext context) {
    statPillModel1 = createModel(context, () => StatPillModel());
    statPillModel2 = createModel(context, () => StatPillModel());
    statPillModel3 = createModel(context, () => StatPillModel());
    statPillModel4 = createModel(context, () => StatPillModel());
    movementItemModel1 = createModel(context, () => MovementItemModel());
    movementItemModel2 = createModel(context, () => MovementItemModel());
    movementItemModel3 = createModel(context, () => MovementItemModel());
    movementItemModel4 = createModel(context, () => MovementItemModel());
    buttonModel1 = createModel(context, () => Button4Model());
    buttonModel2 = createModel(context, () => Button4Model());
  }

  @override
  void dispose() {
    statPillModel1.dispose();
    statPillModel2.dispose();
    statPillModel3.dispose();
    statPillModel4.dispose();
    movementItemModel1.dispose();
    movementItemModel2.dispose();
    movementItemModel3.dispose();
    movementItemModel4.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
