import '/components/chat_message_widget.dart';
import '/components/keypad_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'postingpoll_copy_model.dart';
export 'postingpoll_copy_model.dart';

class PostingpollCopyWidget extends StatefulWidget {
  const PostingpollCopyWidget({Key? key}) : super(key: key);

  @override
  _PostingpollCopyWidgetState createState() => _PostingpollCopyWidgetState();
}

class _PostingpollCopyWidgetState extends State<PostingpollCopyWidget> {
  late PostingpollCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostingpollCopyModel());
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
          backgroundColor: Color(0xFFF99546),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left_sharp,
              color: Colors.white,
              size: 28.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/960/600',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DevOps Group',
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                    RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '5',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: ' Members',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondary,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/images/bg.svg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        reverse: true,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatMessageModel1,
                              updateCallback: () => setState(() {}),
                              child: ChatMessageWidget(
                                isMe: true,
                                message: 'fdgsdgdg ',
                                messageTime: getCurrentTimestamp,
                              ),
                            ),
                          ),
                          Container(
                            height: 100.0,
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatMessageModel2,
                              updateCallback: () => setState(() {}),
                              child: ChatMessageWidget(
                                isMe: false,
                                message: 'sdasdasdsa',
                                messageTime: getCurrentTimestamp,
                              ),
                            ),
                          ),
                          Container(
                            height: 100.0,
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatMessageModel3,
                              updateCallback: () => setState(() {}),
                              child: ChatMessageWidget(
                                isMe: true,
                                message: 'This is test message',
                                messageTime: getCurrentTimestamp,
                              ),
                            ),
                          ),
                          Container(
                            height: 100.0,
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatMessageModel4,
                              updateCallback: () => setState(() {}),
                              child: ChatMessageWidget(
                                isMe: false,
                                message: 'Hello',
                                messageTime: getCurrentTimestamp,
                              ),
                            ),
                          ),
                          Container(
                            height: 100.0,
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatMessageModel5,
                              updateCallback: () => setState(() {}),
                              child: ChatMessageWidget(
                                isMe: true,
                                message: 'hi there',
                                messageTime: getCurrentTimestamp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.keypadModel,
                    updateCallback: () => setState(() {}),
                    child: KeypadWidget(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
