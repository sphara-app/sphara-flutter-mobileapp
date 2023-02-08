import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MediaWidget extends StatefulWidget {
  const MediaWidget({Key? key}) : super(key: key);

  @override
  _MediaWidgetState createState() => _MediaWidgetState();
}

class _MediaWidgetState extends State<MediaWidget> {
  bool? switchListTileValue1;
  bool? switchValue1;
  bool? switchValue2;
  bool? switchValue3;
  bool? switchListTileValue2;
  bool? switchValue4;
  bool? switchValue5;
  bool? switchValue6;
  bool? switchValue7;
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
      appBar: AppBar(
        backgroundColor: Color(0xFFF99546),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            FFIcons.kleftArrow,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Media',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Container(
                width: double.infinity,
                height: 85,
                decoration: BoxDecoration(
                  color: Color(0xFF3F4040),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: SwitchListTile(
                    value: switchListTileValue1 ??= false,
                    onChanged: (newValue) async {
                      setState(() => switchListTileValue1 = newValue!);
                    },
                    title: Text(
                      'Media Visibility',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                    subtitle: Text(
                      'It will show Downloaded media in phone\'s gallery  ',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                    tileColor: FlutterFlowTheme.of(context).primaryColor,
                    activeColor: FlutterFlowTheme.of(context).primaryColor,
                    activeTrackColor:
                        FlutterFlowTheme.of(context).tertiaryColor,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
              child: Text(
                'Automatic Photo Download',
                style: FlutterFlowTheme.of(context).subtitle2,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0xFF3F4040),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Private Chats',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Switch(
                            value: switchValue1 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue1 = newValue!);
                            },
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Groups',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Switch(
                            value: switchValue2 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue2 = newValue!);
                            },
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Channels',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Switch(
                            value: switchValue3 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue3 = newValue!);
                            },
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
              child: Text(
                'Automatic Audio Download',
                style: FlutterFlowTheme.of(context).subtitle2,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: Color(0xFF3F4040),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Private Chats',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Switch(
                            value: switchValue4 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue4 = newValue!);
                            },
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Groups',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Switch(
                            value: switchValue5 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue5 = newValue!);
                            },
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Channels',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Switch(
                            value: switchValue6 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue6 = newValue!);
                            },
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Autoplay Audio',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Switch(
                            value: switchValue7 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchValue7 = newValue!);
                            },
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                        ],
                      ),
                    ),
                    SwitchListTile(
                      value: switchListTileValue2 ??= true,
                      onChanged: (newValue) async {
                        setState(() => switchListTileValue2 = newValue!);
                      },
                      title: Text(
                        'Title',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      subtitle: Text(
                        'Subtitle',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
