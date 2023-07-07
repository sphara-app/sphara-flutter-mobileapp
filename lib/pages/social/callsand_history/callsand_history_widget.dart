import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'callsand_history_model.dart';
export 'callsand_history_model.dart';

class CallsandHistoryWidget extends StatefulWidget {
  const CallsandHistoryWidget({Key? key}) : super(key: key);

  @override
  _CallsandHistoryWidgetState createState() => _CallsandHistoryWidgetState();
}

class _CallsandHistoryWidgetState extends State<CallsandHistoryWidget> {
  late CallsandHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CallsandHistoryModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left_sharp,
              color: FlutterFlowTheme.of(context).primary,
              size: 28.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Container(
            width: 200.0,
            height: 42.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: _model.callSwitch == 1
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Call',
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: _model.callSwitch == 2
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'History',
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
      ),
    );
  }
}
