import '/components/chat_menu/chat_menu_widget.dart';
import '/components/chatedit_more/chatedit_more_widget.dart';
import '/components/social_nav_bar/social_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SocialChatOptionsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for socialNavBar component.
  late SocialNavBarModel socialNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    socialNavBarModel = createModel(context, () => SocialNavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    socialNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
