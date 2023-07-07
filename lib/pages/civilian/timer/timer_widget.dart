import '/components/civilian_nav_bar/civilian_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'timer_model.dart';
export 'timer_model.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late TimerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFF99546),
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: false,
          title: Text(
            'TIMER',
            style: FlutterFlowTheme.of(context).displaySmall,
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/images/bg.svg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (FFAppState().timerRunning)
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        decoration: BoxDecoration(),
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.4,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: CircularPercentIndicator(
                                  percent: _model.timerMilliseconds /
                                      FFAppState().timerValue,
                                  radius: 120.0,
                                  lineWidth: 10.0,
                                  animation: false,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primary,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 200.0,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowTimer(
                                        initialTime: FFAppState().timerValue,
                                        getDisplayTime: (value) =>
                                            StopWatchTimer.getDisplayTime(value,
                                                milliSecond: false),
                                        timer: _model.timerController,
                                        updateStateInterval:
                                            Duration(milliseconds: 600),
                                        onChanged:
                                            (value, displayTime, shouldUpdate) {
                                          _model.timerMilliseconds = value;
                                          _model.timerValue = displayTime;
                                          if (shouldUpdate) setState(() {});
                                        },
                                        onEnded: () async {
                                          setState(() {
                                            FFAppState().timerRunning = false;
                                          });
                                        },
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 40.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displaySmallFamily),
                                            ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                            'jm', FFAppState().finishTimer),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (!FFAppState().timerRunning)
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SelectionArea(
                                child: Text(
                              'HH : MM : SS',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displaySmallFamily,
                                    color: Color(0xFFB0B0B0),
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .displaySmallFamily),
                                  ),
                            )),
                            Container(
                              width: double.infinity,
                              height: 180.0,
                              child: custom_widgets.CustomTimerSpinner(
                                width: double.infinity,
                                height: 180.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          if (FFAppState().timerRunning)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.timerController
                                    .setPresetTime(mSec: 0, add: false);
                                _model.timerController.onExecute
                                    .add(StopWatchExecute.reset);
                              },
                              child: Container(
                                width: 68.0,
                                height: 68.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF707070),
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  'Cancel',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                )),
                              ),
                            ),
                          if (FFAppState().timerRunning &&
                              FFAppState().timerPaused)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.timerController.onExecute
                                    .add(StopWatchExecute.start);
                                setState(() {
                                  FFAppState().timerPaused = false;
                                });
                              },
                              child: Container(
                                width: 68.0,
                                height: 68.0,
                                decoration: BoxDecoration(
                                  color: Color(0x75548E42),
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  'Play',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF68BC4E),
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                )),
                              ),
                            ),
                          if (FFAppState().timerRunning &&
                              !FFAppState().timerPaused)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.timerController.onExecute
                                    .add(StopWatchExecute.stop);
                                setState(() {
                                  FFAppState().timerPaused = true;
                                });
                              },
                              child: Container(
                                width: 68.0,
                                height: 68.0,
                                decoration: BoxDecoration(
                                  color: Color(0x6EF99546),
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  'Pause',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                )),
                              ),
                            ),
                          if (!FFAppState().timerRunning)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState().timerValue > 0) {
                                  setState(() {
                                    FFAppState().timerRunning = true;
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 100));
                                  setState(() {
                                    FFAppState().timerRunning = true;
                                  });
                                  _model.timerController.onExecute
                                      .add(StopWatchExecute.start);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Select Time',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0xFFFF0000),
                                    ),
                                  );
                                }
                              },
                              child: Container(
                                width: 68.0,
                                height: 68.0,
                                decoration: BoxDecoration(
                                  color: Color(0x75548E42),
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: SelectionArea(
                                    child: Text(
                                  'Start',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF68BC4E),
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                )),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: SelectionArea(
                            child: Text(
                          'Ms.Ritika Chauhan,\nWhen the timer ends you get the notification to\nconfirm your safe arrival if you don\'t confirm \nthe safe within 60 sec. the alert will trigger automatically....',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.civilianNavBarModel,
                  updateCallback: () => setState(() {}),
                  child: CivilianNavBarWidget(
                    menuItem: FFAppState().civilianMenu,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
