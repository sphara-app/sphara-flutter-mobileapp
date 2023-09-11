import '/components/keypad_widget.dart';
import '/components/polling_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostingpollModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Polling component.
  late PollingModel pollingModel;
  // Model for Keypad component.
  late KeypadModel keypadModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pollingModel = createModel(context, () => PollingModel());
    keypadModel = createModel(context, () => KeypadModel());
  }

  void dispose() {
    unfocusNode.dispose();
    pollingModel.dispose();
    keypadModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
