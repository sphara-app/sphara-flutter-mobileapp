import '/components/iconand_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IconandLabelModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for IconandText component.
  late IconandTextModel iconandTextModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    iconandTextModel = createModel(context, () => IconandTextModel());
  }

  void dispose() {
    iconandTextModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
