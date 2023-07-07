import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chatinfo_threedots_model.dart';
export 'chatinfo_threedots_model.dart';

class ChatinfoThreedotsWidget extends StatefulWidget {
  const ChatinfoThreedotsWidget({Key? key}) : super(key: key);

  @override
  _ChatinfoThreedotsWidgetState createState() =>
      _ChatinfoThreedotsWidgetState();
}

class _ChatinfoThreedotsWidgetState extends State<ChatinfoThreedotsWidget> {
  late ChatinfoThreedotsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatinfoThreedotsModel());
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
            height: 205.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Add to home screen',
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
                    'Edit contact',
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
                Divider(
                  thickness: 1.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Text(
                    'Delete contact',
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
