import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomepagesettingsWidget extends StatefulWidget {
  const HomepagesettingsWidget({Key? key}) : super(key: key);

  @override
  _HomepagesettingsWidgetState createState() => _HomepagesettingsWidgetState();
}

class _HomepagesettingsWidgetState extends State<HomepagesettingsWidget> {
  bool? switchListTileValue1;
  bool? switchListTileValue2;

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.77, -1),
      child: Container(
        width: 200,
        height: 160,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: Text(
                      'Quick Settings',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            color: Colors.black,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 2, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                      child: Icon(
                        FFIcons.kvoiceRecognition,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: SwitchListTile(
                        value: switchListTileValue1 ??= true,
                        onChanged: (newValue) async {
                          setState(() => switchListTileValue1 = newValue!);
                        },
                        title: Text(
                          'voice',
                          style: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText2Family,
                                color: Colors.black,
                                fontSize: 13,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText2Family),
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
                padding: EdgeInsetsDirectional.fromSTEB(10, 2, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                      child: Icon(
                        FFIcons.kmaskGroup75,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: SwitchListTile(
                        value: switchListTileValue2 ??= false,
                        onChanged: (newValue) async {
                          setState(() => switchListTileValue2 = newValue!);
                        },
                        title: Text(
                          'panic siren',
                          style: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText2Family,
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 13,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText2Family),
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
