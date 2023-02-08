import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HorizontalshakeWidget extends StatefulWidget {
  const HorizontalshakeWidget({Key? key}) : super(key: key);

  @override
  _HorizontalshakeWidgetState createState() => _HorizontalshakeWidgetState();
}

class _HorizontalshakeWidgetState extends State<HorizontalshakeWidget> {
  bool? switchValue1;
  bool? switchValue2;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 40, 0, 0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.chevron_left_sharp,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 30,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'Gesture Trigger Settings',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                      child: Text(
                        'SPHARA app will allows you to shake your phone in order to trigger emergency services,even if your screen is off, you can still shake it, and it\'ll work! ',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed(
                          'Verticalshake',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectionArea(
                              child: Text(
                            'Vertical Shake',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          )),
                          Switch(
                            value: switchValue1 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue1 = newValue!);
                            },
                            activeColor: Color(0xFFF99546),
                            activeTrackColor: Color(0xFF8B8B8B),
                            inactiveTrackColor: Color(0xFF8B8B8B),
                            inactiveThumbColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed(
                          'Horizontalshake',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectionArea(
                              child: Text(
                            'Horizontal Shake',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          )),
                          Switch(
                            value: switchValue2 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue2 = newValue!);
                            },
                            activeColor: Color(0xFFF99546),
                            activeTrackColor: Color(0xFF8B8B8B),
                            inactiveTrackColor: Color(0xFF8B8B8B),
                            inactiveThumbColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xAD3A3A3A),
              ),
              alignment: AlignmentDirectional(0, 0),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                      child: Container(
                        width: 325,
                        height: 300,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, -0.3),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Image.asset(
                                  'assets/images/Horizontal_gesture.png',
                                  width: 200,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 20, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'Horizontal shake',
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .title2Family,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .title2Family),
                                        ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'Horizontal shake gesture has been enabled it\nwill trigger the panic button whenever you will\napply this gesture',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family,
                                          color: Colors.black,
                                          fontSize: 14,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2Family),
                                        ),
                                  )),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 20, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'CONTINUE',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family,
                                          color: Color(0xFFF99546),
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family),
                                        ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
