import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alert_delay_model.dart';
export 'alert_delay_model.dart';

class AlertDelayWidget extends StatefulWidget {
  const AlertDelayWidget({Key? key}) : super(key: key);

  @override
  _AlertDelayWidgetState createState() => _AlertDelayWidgetState();
}

class _AlertDelayWidgetState extends State<AlertDelayWidget> {
  late AlertDelayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertDelayModel());
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
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 35.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.chevron_left_sharp,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
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
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 30.0,
                          ),
                          title: Text(
                            'Alarm Delay',
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                          subtitle: Text(
                            'Set the number of seconds from whenthe\nSOS button is pushed until the alarm triggered.',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 20.0,
                          ),
                          tileColor: FlutterFlowTheme.of(context).secondary,
                          dense: true,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
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
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 34.0,
                          ),
                          title: Text(
                            'Dial Delay',
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                          subtitle: Text(
                            'This setting will enable  number of seconds delay need to connect with your local emergency number.',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 20.0,
                          ),
                          tileColor: FlutterFlowTheme.of(context).secondary,
                          dense: true,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('Timer');
                        },
                        child: ListTile(
                          leading: Icon(
                            FFIcons.kalarmDelay,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 30.0,
                          ),
                          title: Text(
                            'Timer Delay',
                            style: FlutterFlowTheme.of(context).titleSmall,
                          ),
                          subtitle: Text(
                            'Set the timer to confirm your safe-arrival.',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 20.0,
                          ),
                          tileColor: FlutterFlowTheme.of(context).secondary,
                          dense: true,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
