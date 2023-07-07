import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'directmessage_threedots_model.dart';
export 'directmessage_threedots_model.dart';

class DirectmessageThreedotsWidget extends StatefulWidget {
  const DirectmessageThreedotsWidget({Key? key}) : super(key: key);

  @override
  _DirectmessageThreedotsWidgetState createState() =>
      _DirectmessageThreedotsWidgetState();
}

class _DirectmessageThreedotsWidgetState
    extends State<DirectmessageThreedotsWidget> {
  late DirectmessageThreedotsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DirectmessageThreedotsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 400.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 335.0,
            height: 255.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Create a group with Gagan',
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Chat info',
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Text(
                    'Media,links & docs ',
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Text(
                    'Search',
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Text(
                    'Open secret chat',
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pop();
              },
              text: 'CANCEL',
              options: FFButtonOptions(
                width: 335.0,
                height: 50.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: Colors.white,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
