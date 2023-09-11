import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'media_model.dart';
export 'media_model.dart';

class MediaWidget extends StatefulWidget {
  const MediaWidget({Key? key}) : super(key: key);

  @override
  _MediaWidgetState createState() => _MediaWidgetState();
}

class _MediaWidgetState extends State<MediaWidget> {
  late MediaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MediaModel());
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
        appBar: AppBar(
          backgroundColor: Color(0xFFF99546),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              FFIcons.kleftArrow,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Media',
            style: FlutterFlowTheme.of(context).displaySmall,
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 85.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF3F4040),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: SwitchListTile(
                      value: _model.switchListTileValue1 ??= false,
                      onChanged: (newValue) async {
                        setState(() => _model.switchListTileValue1 = newValue!);
                      },
                      title: Text(
                        'Media Visibility',
                        style: FlutterFlowTheme.of(context).titleSmall,
                      ),
                      subtitle: Text(
                        'It will show Downloaded media in phone\'s gallery. ',
                        style: FlutterFlowTheme.of(context).bodySmall,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primary,
                      activeColor: FlutterFlowTheme.of(context).primary,
                      activeTrackColor: FlutterFlowTheme.of(context).tertiary,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Automatic Photo Download',
                  style: FlutterFlowTheme.of(context).titleSmall,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 180.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF3F4040),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 20.0, 10.0, 0.0),
                        child: SwitchListTile(
                          value: _model.switchListTileValue2 ??= false,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue2 = newValue!);
                          },
                          title: Text(
                            'Private Chats',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiary,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: SwitchListTile(
                          value: _model.switchListTileValue3 ??= false,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue3 = newValue!);
                          },
                          title: Text(
                            'Groups',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiary,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: SwitchListTile(
                          value: _model.switchListTileValue4 ??= false,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue4 = newValue!);
                          },
                          title: Text(
                            'Channels',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiary,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Automatic Audio Download',
                  style: FlutterFlowTheme.of(context).titleSmall,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF3F4040),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 20.0, 10.0, 0.0),
                        child: SwitchListTile(
                          value: _model.switchListTileValue5 ??= false,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue5 = newValue!);
                          },
                          title: Text(
                            'Private Chats',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiary,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: SwitchListTile(
                          value: _model.switchListTileValue6 ??= false,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue6 = newValue!);
                          },
                          title: Text(
                            'Groups',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiary,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: SwitchListTile(
                          value: _model.switchListTileValue7 ??= false,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue7 = newValue!);
                          },
                          title: Text(
                            'Channels',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiary,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: SwitchListTile(
                          value: _model.switchListTileValue8 ??= false,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue8 = newValue!);
                          },
                          title: Text(
                            'Apply Audio',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiary,
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
