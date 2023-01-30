import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountDeleteWidget extends StatefulWidget {
  const AccountDeleteWidget({Key? key}) : super(key: key);

  @override
  _AccountDeleteWidgetState createState() => _AccountDeleteWidgetState();
}

class _AccountDeleteWidgetState extends State<AccountDeleteWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 335,
      height: 150,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
            child: Text(
              'Are you sure you want to delete\nyour account permanently?',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                    color: Colors.black,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText1Family),
                  ),
            ),
          ),
          Divider(
            thickness: 1,
            indent: 10,
            endIndent: 10,
            color: FlutterFlowTheme.of(context).tertiaryColor,
          ),
        ],
      ),
    );
  }
}
