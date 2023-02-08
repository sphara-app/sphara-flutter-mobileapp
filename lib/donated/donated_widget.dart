import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonatedWidget extends StatefulWidget {
  const DonatedWidget({Key? key}) : super(key: key);

  @override
  _DonatedWidgetState createState() => _DonatedWidgetState();
}

class _DonatedWidgetState extends State<DonatedWidget> {
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
            color: Color(0xFF454545),
          ),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                    child: Icon(
                      FFIcons.kcheckmarkOutline,
                      color: Color(0xFFF99546),
                      size: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Text(
                    'Successful!',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: FlutterFlowTheme.of(context).title1Family,
                          fontSize: 34,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).title1Family),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Text(
                    'You donated  ₹500 to Police officers',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).subtitle1Family,
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).subtitle1Family),
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'DONE',
                    options: FFButtonOptions(
                      width: 335,
                      height: 50,
                      color: Color(0xFFF99546),
                      textStyle: FlutterFlowTheme.of(context).title3,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
