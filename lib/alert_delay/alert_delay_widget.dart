import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlertDelayWidget extends StatefulWidget {
  const AlertDelayWidget({Key? key}) : super(key: key);

  @override
  _AlertDelayWidgetState createState() => _AlertDelayWidgetState();
}

class _AlertDelayWidgetState extends State<AlertDelayWidget> {
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
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed(
                          'Alarmdelay',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.alarm,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 30,
                        ),
                        title: Text(
                          'Alarm Delay',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        subtitle: Text(
                          'Set the number of seconds from whenthe\nSOS button is pushed until the alarm triggered.',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 20,
                        ),
                        tileColor: FlutterFlowTheme.of(context).secondaryColor,
                        dense: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed(
                          'Dialdelay',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          FFIcons.knounDelay29813461,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 34,
                        ),
                        title: Text(
                          'Dial Delay',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        subtitle: Text(
                          'This setting will enable  number of seconds delay need to connect with your local emergency number.',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 20,
                        ),
                        tileColor: FlutterFlowTheme.of(context).secondaryColor,
                        dense: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('SetTimer');
                      },
                      child: ListTile(
                        leading: Icon(
                          FFIcons.kalarmDelay,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 30,
                        ),
                        title: Text(
                          'Timer Delay',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        subtitle: Text(
                          'Set the timer to confirm your safe-arrival.',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 20,
                        ),
                        tileColor: FlutterFlowTheme.of(context).secondaryColor,
                        dense: true,
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
