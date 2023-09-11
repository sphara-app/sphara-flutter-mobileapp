import '/components/conversation_sample/conversation_sample_widget.dart';
import '/components/keypad_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DirectMessageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for conversationSample component.
  late ConversationSampleModel conversationSampleModel;
  // Model for Keypad component.
  late KeypadModel keypadModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    conversationSampleModel =
        createModel(context, () => ConversationSampleModel());
    keypadModel = createModel(context, () => KeypadModel());
  }

  void dispose() {
    unfocusNode.dispose();
    conversationSampleModel.dispose();
    keypadModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
