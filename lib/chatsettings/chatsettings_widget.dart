import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatsettingsWidget extends StatefulWidget {
  const ChatsettingsWidget({Key? key}) : super(key: key);

  @override
  _ChatsettingsWidgetState createState() => _ChatsettingsWidgetState();
}

class _ChatsettingsWidgetState extends State<ChatsettingsWidget> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            FFIcons.kleftArrow,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 30,
                          ),
                          onPressed: () async {
                            context.pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Notifications');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FFIcons.kemergencyAlertMessage,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 80, 0),
                          child: Text(
                            'Notifications & Sounds',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            FFIcons.krightArrow,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pushNamed('Notifications');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('PrivacyAndControl');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.security,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 110, 0),
                          child: Text(
                            'privacy & Security',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            FFIcons.krightArrow,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pushNamed('PrivacyAndControl');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Chats');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.chat_outlined,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 180, 0),
                          child: Text(
                            'Chats',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            FFIcons.krightArrow,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pushNamed('Chats');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('StorageAnalyticsScreen');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.data_usage,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 130, 0),
                          child: Text(
                            'Storage & Data',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            FFIcons.krightArrow,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pushNamed('StorageAnalyticsScreen');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
