import '/components/icon_label_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_attachment_model.dart';
export 'chat_attachment_model.dart';

class ChatAttachmentWidget extends StatefulWidget {
  const ChatAttachmentWidget({Key? key}) : super(key: key);

  @override
  _ChatAttachmentWidgetState createState() => _ChatAttachmentWidgetState();
}

class _ChatAttachmentWidgetState extends State<ChatAttachmentWidget> {
  late ChatAttachmentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatAttachmentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
      child: Container(
        width: double.infinity,
        height: 200.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).alternate,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.iconLabelModel1,
                        updateCallback: () => setState(() {}),
                        child: IconLabelWidget(
                          iconData: Icon(
                            FFIcons.kcontacts,
                          ),
                          iconLabel: 'Documernt',
                          onTap: () async {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.iconLabelModel2,
                        updateCallback: () => setState(() {}),
                        child: IconLabelWidget(
                          iconData: Icon(
                            Icons.photo,
                          ),
                          iconLabel: 'Gallery',
                          onTap: () async {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.iconLabelModel3,
                        updateCallback: () => setState(() {}),
                        child: IconLabelWidget(
                          iconData: FaIcon(
                            FontAwesomeIcons.music,
                          ),
                          iconLabel: 'Audio',
                          onTap: () async {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.iconLabelModel4,
                        updateCallback: () => setState(() {}),
                        child: IconLabelWidget(
                          iconData: Icon(
                            Icons.person,
                          ),
                          iconLabel: 'Contact',
                          onTap: () async {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.5 - 20,
                  height: double.infinity,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.iconLabelModel5,
                          updateCallback: () => setState(() {}),
                          child: IconLabelWidget(
                            iconData: Icon(
                              Icons.location_on_outlined,
                            ),
                            iconLabel: 'Location',
                            onTap: () async {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.iconLabelModel6,
                          updateCallback: () => setState(() {}),
                          child: IconLabelWidget(
                            iconData: FaIcon(
                              FontAwesomeIcons.pollH,
                            ),
                            iconLabel: 'Poll',
                            onTap: () async {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
