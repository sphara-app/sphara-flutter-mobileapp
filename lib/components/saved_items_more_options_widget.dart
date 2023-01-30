import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SavedItemsMoreOptionsWidget extends StatefulWidget {
  const SavedItemsMoreOptionsWidget({Key? key}) : super(key: key);

  @override
  _SavedItemsMoreOptionsWidgetState createState() =>
      _SavedItemsMoreOptionsWidgetState();
}

class _SavedItemsMoreOptionsWidgetState
    extends State<SavedItemsMoreOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
      child: Container(
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          color: Color(0x00505050),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 245,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'View',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Share',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Add to collection',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Copy link',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Unsave',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            color: Color(0xFFCD3636),
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
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
