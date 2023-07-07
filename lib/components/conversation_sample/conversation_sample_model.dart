import '/components/read_recipent/read_recipent_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConversationSampleModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  int timerMilliseconds1 = 10000;
  String timerValue1 = StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer timerController1 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // Model for ReadRecipent component.
  late ReadRecipentModel readRecipentModel;
  // State field(s) for Timer widget.
  int timerMilliseconds2 = 10000;
  String timerValue2 = StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer timerController2 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for Timer widget.
  int timerMilliseconds3 = 10000;
  String timerValue3 = StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer timerController3 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for Timer widget.
  int timerMilliseconds4 = 10000;
  String timerValue4 = StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer timerController4 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for Timer widget.
  int timerMilliseconds5 = 10000;
  String timerValue5 = StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer timerController5 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    readRecipentModel = createModel(context, () => ReadRecipentModel());
  }

  void dispose() {
    timerController1.dispose();
    readRecipentModel.dispose();
    timerController2.dispose();
    timerController3.dispose();
    timerController4.dispose();
    timerController5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
