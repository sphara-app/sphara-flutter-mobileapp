import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GesturetriggersettingsWidget extends StatefulWidget {
  const GesturetriggersettingsWidget({Key? key}) : super(key: key);

  @override
  _GesturetriggersettingsWidgetState createState() =>
      _GesturetriggersettingsWidgetState();
}

class _GesturetriggersettingsWidgetState
    extends State<GesturetriggersettingsWidget> {
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
          ],
        ),
      ),
    );
  }
}
