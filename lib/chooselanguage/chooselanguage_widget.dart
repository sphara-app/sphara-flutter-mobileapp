import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChooselanguageWidget extends StatefulWidget {
  const ChooselanguageWidget({Key? key}) : super(key: key);

  @override
  _ChooselanguageWidgetState createState() => _ChooselanguageWidgetState();
}

class _ChooselanguageWidgetState extends State<ChooselanguageWidget> {
  bool? checkboxListTileValue1;
  bool? checkboxListTileValue2;
  bool? checkboxListTileValue3;
  bool? checkboxListTileValue4;
  bool? checkboxListTileValue5;
  bool? checkboxListTileValue6;
  bool? checkboxListTileValue7;
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
                        'Change App Language',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      )),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                      child: SelectionArea(
                          child: Text(
                        'SPHARA app will use the first language that it supports from language settings. you can select a different language if you prefer',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Color(0xFF3A3939),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Theme(
                              data: ThemeData(
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                              child: CheckboxListTile(
                                value: checkboxListTileValue1 ??= true,
                                onChanged: (newValue) async {
                                  setState(
                                      () => checkboxListTileValue1 = newValue!);
                                },
                                title: Text(
                                  'English',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title3Family,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .title3Family),
                                      ),
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                checkColor:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    30, 0, 30, 0),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue2 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue2 = newValue!);
                              },
                              title: Text(
                                'Arabic',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .title3Family,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .title3Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue3 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue3 = newValue!);
                              },
                              title: Text(
                                'Austria',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .title3Family,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .title3Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue4 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue4 = newValue!);
                              },
                              title: Text(
                                'Bengali',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .title3Family,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .title3Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue5 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue5 = newValue!);
                              },
                              title: Text(
                                'Chinese',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .title3Family,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .title3Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue6 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue6 = newValue!);
                              },
                              title: Text(
                                'French',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .title3Family,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .title3Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue7 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue7 = newValue!);
                              },
                              title: Text(
                                'German',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                            ),
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
