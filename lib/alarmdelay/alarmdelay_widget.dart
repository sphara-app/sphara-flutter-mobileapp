import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlarmdelayWidget extends StatefulWidget {
  const AlarmdelayWidget({Key? key}) : super(key: key);

  @override
  _AlarmdelayWidgetState createState() => _AlarmdelayWidgetState();
}

class _AlarmdelayWidgetState extends State<AlarmdelayWidget> {
  double? sliderValue1;
  double? sliderValue2;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/images/bg.svg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('AlertDelay');
                    },
                    child: Icon(
                      FFIcons.kleftArrow,
                      color: Color(0xFFF99546),
                      size: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                  child: SelectionArea(
                      child: Text(
                    'Alarm Delay',
                    style: FlutterFlowTheme.of(context).subtitle1,
                  )),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                  child: SelectionArea(
                      child: Text(
                    'Set the number of seconds from when the SOS button \nis pushed until the alarm is triggered..',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText2Family,
                          fontSize: 14,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText2Family),
                        ),
                  )),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'Voice Activation alarm delay',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                        child: SelectionArea(
                            child: Text(
                          'SET',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color: Color(0xFFF99546),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color(0xFF3A3939),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                '5',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              )),
                            ),
                            Expanded(
                              child: Slider(
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                inactiveColor: Color(0xFF9E9E9E),
                                min: 4,
                                max: 60,
                                value: sliderValue1 ??= 40,
                                onChanged: (newValue) {
                                  setState(() => sliderValue1 = newValue);
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: SelectionArea(
                                  child: Text(
                                '60',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              )),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.39, -0.75),
                          child: Container(
                            width: 100,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: SelectionArea(
                                  child: Text(
                                '40 seconds',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: Colors.black,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'Gesture trigger delay',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                        child: SelectionArea(
                            child: Text(
                          'SET',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color: Color(0xFFF99546),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color(0xFF3A3939),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                '5',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              )),
                            ),
                            Expanded(
                              child: Slider(
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                inactiveColor: Color(0xFF9E9E9E),
                                min: 4,
                                max: 60,
                                value: sliderValue2 ??= 40,
                                onChanged: (newValue) {
                                  setState(() => sliderValue2 = newValue);
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: SelectionArea(
                                  child: Text(
                                '60',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              )),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.39, -0.75),
                          child: Container(
                            width: 100,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: SelectionArea(
                                  child: Text(
                                '40 seconds',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: Colors.black,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
