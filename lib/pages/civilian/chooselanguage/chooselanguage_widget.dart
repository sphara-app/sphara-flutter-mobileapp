import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chooselanguage_model.dart';
export 'chooselanguage_model.dart';

class ChooselanguageWidget extends StatefulWidget {
  const ChooselanguageWidget({Key? key}) : super(key: key);

  @override
  _ChooselanguageWidgetState createState() => _ChooselanguageWidgetState();
}

class _ChooselanguageWidgetState extends State<ChooselanguageWidget> {
  late ChooselanguageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooselanguageModel());
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
                alignment: AlignmentDirectional(0.0, 0.0),
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
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 0.0, 0.0),
                        child: SelectionArea(
                            child: Text(
                          'Change App Language',
                          style: FlutterFlowTheme.of(context).titleMedium,
                        )),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 5.0, 20.0, 0.0),
                        child: SelectionArea(
                            child: Text(
                          'SPHARA app will use the first language that it supports from language settings. you can select a different language if you prefer.',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        )),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 500.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF3A3939),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue1 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue1 = newValue!);
                                  },
                                  title: Text(
                                    'English',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                  tileColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 30.0, 0.0),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValue2 ??= false,
                                onChanged: (newValue) async {
                                  setState(() => _model.checkboxListTileValue2 =
                                      newValue!);
                                },
                                title: Text(
                                  'Arabic',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor:
                                    FlutterFlowTheme.of(context).secondary,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValue3 ??= false,
                                onChanged: (newValue) async {
                                  setState(() => _model.checkboxListTileValue3 =
                                      newValue!);
                                },
                                title: Text(
                                  'Austria',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor:
                                    FlutterFlowTheme.of(context).secondary,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValue4 ??= false,
                                onChanged: (newValue) async {
                                  setState(() => _model.checkboxListTileValue4 =
                                      newValue!);
                                },
                                title: Text(
                                  'Bengali',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor:
                                    FlutterFlowTheme.of(context).secondary,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValue5 ??= false,
                                onChanged: (newValue) async {
                                  setState(() => _model.checkboxListTileValue5 =
                                      newValue!);
                                },
                                title: Text(
                                  'Chinese',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor:
                                    FlutterFlowTheme.of(context).secondary,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValue6 ??= false,
                                onChanged: (newValue) async {
                                  setState(() => _model.checkboxListTileValue6 =
                                      newValue!);
                                },
                                title: Text(
                                  'French',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily),
                                      ),
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor:
                                    FlutterFlowTheme.of(context).secondary,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            Theme(
                              data: ThemeData(
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValue7 ??= false,
                                onChanged: (newValue) async {
                                  setState(() => _model.checkboxListTileValue7 =
                                      newValue!);
                                },
                                title: Text(
                                  'German',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall,
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor:
                                    FlutterFlowTheme.of(context).secondary,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
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
      ),
    );
  }
}
