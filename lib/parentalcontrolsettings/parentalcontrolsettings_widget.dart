import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ParentalcontrolsettingsWidget extends StatefulWidget {
  const ParentalcontrolsettingsWidget({Key? key}) : super(key: key);

  @override
  _ParentalcontrolsettingsWidgetState createState() =>
      _ParentalcontrolsettingsWidgetState();
}

class _ParentalcontrolsettingsWidgetState
    extends State<ParentalcontrolsettingsWidget> {
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
                      child: SelectionArea(
                          child: Text(
                        'Parental Control Settings',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                    child: SelectionArea(
                        child: Text(
                      'The parent control feature will allow SPHARA to apply default settings on your children account which isfor their age such as',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.lock_outlined,
                          color: Color(0xFFB0B0B0),
                          size: 20,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: SelectionArea(
                              child: Text(
                            'Restrict public channels and groups',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.remove_circle_outline,
                          color: Color(0xFFB0B0B0),
                          size: 20,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: SelectionArea(
                              child: Text(
                            'Exclude content which is not suitable for\nthem',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'TURN ON',
                          options: FFButtonOptions(
                            width: 335,
                            height: 50,
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context).title3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
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
