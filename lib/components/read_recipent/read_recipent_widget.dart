import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'read_recipent_model.dart';
export 'read_recipent_model.dart';

class ReadRecipentWidget extends StatefulWidget {
  const ReadRecipentWidget({Key? key}) : super(key: key);

  @override
  _ReadRecipentWidgetState createState() => _ReadRecipentWidgetState();
}

class _ReadRecipentWidgetState extends State<ReadRecipentWidget> {
  late ReadRecipentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReadRecipentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      alignment: AlignmentDirectional(0.0, 0.0),
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 10.0),
          child: Text(
            'R',
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                  color: FlutterFlowTheme.of(context).primary,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodySmallFamily),
                ),
          ),
        ),
        Icon(
          Icons.check,
          color: FlutterFlowTheme.of(context).primary,
          size: 20.0,
        ),
      ],
    );
  }
}
