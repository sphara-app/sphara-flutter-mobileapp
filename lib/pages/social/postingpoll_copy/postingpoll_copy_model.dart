import '/components/chat_message_widget.dart';
import '/components/keypad_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostingpollCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ChatMessage component.
  late ChatMessageModel chatMessageModel1;
  // Model for ChatMessage component.
  late ChatMessageModel chatMessageModel2;
  // Model for ChatMessage component.
  late ChatMessageModel chatMessageModel3;
  // Model for ChatMessage component.
  late ChatMessageModel chatMessageModel4;
  // Model for ChatMessage component.
  late ChatMessageModel chatMessageModel5;
  // Model for Keypad component.
  late KeypadModel keypadModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    chatMessageModel1 = createModel(context, () => ChatMessageModel());
    chatMessageModel2 = createModel(context, () => ChatMessageModel());
    chatMessageModel3 = createModel(context, () => ChatMessageModel());
    chatMessageModel4 = createModel(context, () => ChatMessageModel());
    chatMessageModel5 = createModel(context, () => ChatMessageModel());
    keypadModel = createModel(context, () => KeypadModel());
  }

  void dispose() {
    unfocusNode.dispose();
    chatMessageModel1.dispose();
    chatMessageModel2.dispose();
    chatMessageModel3.dispose();
    chatMessageModel4.dispose();
    chatMessageModel5.dispose();
    keypadModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
