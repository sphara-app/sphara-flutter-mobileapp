import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_conversation_model.dart';
export 'chat_conversation_model.dart';

class ChatConversationWidget extends StatefulWidget {
  const ChatConversationWidget({
    Key? key,
    this.messagecontent,
    this.time,
  }) : super(key: key);

  final String? messagecontent;
  final DateTime? time;

  @override
  _ChatConversationWidgetState createState() => _ChatConversationWidgetState();
}

class _ChatConversationWidgetState extends State<ChatConversationWidget> {
  late ChatConversationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatConversationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
          child: Stack(
            children: [
              FaIcon(
                FontAwesomeIcons.circle,
                color: Colors.black,
                size: 20.0,
              ),
              FaIcon(
                FontAwesomeIcons.solidDotCircle,
                color: FlutterFlowTheme.of(context).primary,
                size: 20.0,
              ),
            ],
          ),
        ),
        Text(
          widget.messagecontent!,
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
        Text(
          valueOrDefault<String>(
            widget.time?.toString(),
            '0',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ],
    );
  }
}
