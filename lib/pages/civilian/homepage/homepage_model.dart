import '/components/civilian_nav_bar/civilian_nav_bar_widget.dart';
import '/components/homepagesettings/homepagesettings_widget.dart';
import '/components/menu_new/menu_new_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomepageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool settings = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuNew component.
  late MenuNewModel menuNewModel;
  // Model for homepagesettings component.
  late HomepagesettingsModel homepagesettingsModel;
  // Model for CivilianNavBar component.
  late CivilianNavBarModel civilianNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuNewModel = createModel(context, () => MenuNewModel());
    homepagesettingsModel = createModel(context, () => HomepagesettingsModel());
    civilianNavBarModel = createModel(context, () => CivilianNavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuNewModel.dispose();
    homepagesettingsModel.dispose();
    civilianNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
