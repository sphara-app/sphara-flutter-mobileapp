import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'homepagesettings_model.dart';
export 'homepagesettings_model.dart';

class HomepagesettingsWidget extends StatefulWidget {
  const HomepagesettingsWidget({Key? key}) : super(key: key);

  @override
  _HomepagesettingsWidgetState createState() => _HomepagesettingsWidgetState();
}

class _HomepagesettingsWidgetState extends State<HomepagesettingsWidget> {
  late HomepagesettingsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepagesettingsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.77, -1.0),
      child: Container(
        width: 200.0,
        height: 160.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Quick Settings',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: Colors.black,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleMediumFamily),
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 2.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                      child: Icon(
                        FFIcons.kvoiceRecognition,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: SwitchListTile(
                        value: _model.switchListTileValue1 ??= false,
                        onChanged: (newValue) async {
                          setState(
                              () => _model.switchListTileValue1 = newValue!);
                        },
                        title: Text(
                          'voice',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontSize: 13.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodySmallFamily),
                              ),
                        ),
                        tileColor: Color(0xFF8B8B8B),
                        activeColor: Color(0xFFF99546),
                        activeTrackColor: Color(0xFFB0B0B0),
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 2.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                      child: Icon(
                        FFIcons.kmaskGroup75,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: SwitchListTile(
                        value: _model.switchListTileValue2 ??= false,
                        onChanged: (newValue) async {
                          setState(
                              () => _model.switchListTileValue2 = newValue!);
                        },
                        title: Text(
                          'panic siren',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontSize: 13.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodySmallFamily),
                              ),
                        ),
                        tileColor: Color(0xFF8B8B8B),
                        activeColor: Color(0xFFF99546),
                        activeTrackColor: Color(0xFFB0B0B0),
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
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
