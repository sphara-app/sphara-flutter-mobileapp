import '/components/menu_new/menu_new_widget.dart';
import '/components/responder_nav_bar/responder_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResponderMainpageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuNew component.
  late MenuNewModel menuNewModel;
  // Model for responderNavBar component.
  late ResponderNavBarModel responderNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuNewModel = createModel(context, () => MenuNewModel());
    responderNavBarModel = createModel(context, () => ResponderNavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuNewModel.dispose();
    responderNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
