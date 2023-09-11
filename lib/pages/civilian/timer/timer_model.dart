import '/components/civilian_nav_bar/civilian_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class TimerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  StopWatchTimer timerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // Model for CivilianNavBar component.
  late CivilianNavBarModel civilianNavBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    civilianNavBarModel = createModel(context, () => CivilianNavBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
    civilianNavBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
