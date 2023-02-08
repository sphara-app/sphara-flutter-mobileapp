import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FirstResponderCredentialsWidget extends StatefulWidget {
  const FirstResponderCredentialsWidget({Key? key}) : super(key: key);

  @override
  _FirstResponderCredentialsWidgetState createState() =>
      _FirstResponderCredentialsWidgetState();
}

class _FirstResponderCredentialsWidgetState
    extends State<FirstResponderCredentialsWidget> {
  String? dropDownValue;
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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              'Upload Credentials',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle1Family,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    letterSpacing: 0.5,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle1Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FlutterFlowDropDown<String>(
                        options: [
                          'Police officer',
                          'Fire fighter',
                          'Paramedics',
                          'Others'
                        ],
                        onChanged: (val) => setState(() => dropDownValue = val),
                        width: 335,
                        height: 50,
                        textStyle: FlutterFlowTheme.of(context).bodyText1,
                        hintText: 'You serve as',
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Color(0xFFB0B0B0),
                          size: 15,
                        ),
                        fillColor: Color(0xFF505050),
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 40,
                        margin: EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                        hidesUnderline: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Upload Credantials',
                        icon: Icon(
                          FFIcons.ktrayArrowUp,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 335,
                          height: 50,
                          color: Color(0x00B0B0B0),
                          textStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily:
                                    FlutterFlowTheme.of(context).title3Family,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context).title3Family),
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Take photo',
                        icon: Icon(
                          Icons.photo_camera_outlined,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 335,
                          height: 50,
                          color: Color(0x00B0B0B0),
                          textStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily:
                                    FlutterFlowTheme.of(context).title3Family,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context).title3Family),
                              ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
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
                            text: 'UPLOAD',
                            options: FFButtonOptions(
                              width: 335,
                              height: 50,
                              color: Color(0xFFF99546),
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
      ),
    );
  }
}
