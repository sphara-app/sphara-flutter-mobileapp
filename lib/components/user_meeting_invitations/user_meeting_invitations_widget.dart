import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_meeting_invitations_model.dart';
export 'user_meeting_invitations_model.dart';

class UserMeetingInvitationsWidget extends StatefulWidget {
  const UserMeetingInvitationsWidget({
    Key? key,
    String? meetingtitle,
    this.meetingtimrange,
  })  : this.meetingtitle = meetingtitle ?? 'RoadmapDiscussion',
        super(key: key);

  final String meetingtitle;
  final DateTime? meetingtimrange;

  @override
  _UserMeetingInvitationsWidgetState createState() =>
      _UserMeetingInvitationsWidgetState();
}

class _UserMeetingInvitationsWidgetState
    extends State<UserMeetingInvitationsWidget> {
  late UserMeetingInvitationsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserMeetingInvitationsModel());
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
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.meetingtitle,
                  style: FlutterFlowTheme.of(context).titleSmall,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          dateTimeFormat('jm', widget.meetingtimrange),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Icon(
                        Icons.horizontal_rule_rounded,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 16.0,
                      ),
                      Text(
                        valueOrDefault<String>(
                          dateTimeFormat('jm', widget.meetingtimrange),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('JoiningMeeting');
              },
              child: Text(
                'JOIN',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).primary,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
