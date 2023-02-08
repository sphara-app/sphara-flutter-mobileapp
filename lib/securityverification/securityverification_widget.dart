import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SecurityverificationWidget extends StatefulWidget {
  const SecurityverificationWidget({Key? key}) : super(key: key);

  @override
  _SecurityverificationWidgetState createState() =>
      _SecurityverificationWidgetState();
}

class _SecurityverificationWidgetState
    extends State<SecurityverificationWidget> {
  bool? switchListTileValue;
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
                        'Security',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                      child: Text(
                        'When 2-step is turned ON, you  will prompted for your passcode when you are trying to re-login or restore your profile.',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                    child: SwitchListTile(
                      value: switchListTileValue ??= true,
                      onChanged: (newValue) async {
                        setState(() => switchListTileValue = newValue!);
                        if (newValue!) {
                          context.pushNamed(
                            'securityverification',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        }
                      },
                      title: Text(
                        '2-Step Verification',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      activeTrackColor:
                          FlutterFlowTheme.of(context).tertiaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'Edit Passcode',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              )),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'EDIT',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        color: Color(0xFFF99546),
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'Update Email',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              )),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'UPDATE',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        color: Color(0xFFF99546),
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
