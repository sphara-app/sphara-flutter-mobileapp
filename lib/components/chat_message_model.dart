import '/components/read_recipent/read_recipent_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatMessageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for ReadRecipent component.
  late ReadRecipentModel readRecipentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    readRecipentModel = createModel(context, () => ReadRecipentModel());
  }

  void dispose() {
    readRecipentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
