import '/components/icon_label_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'social_more_model.dart';
export 'social_more_model.dart';

class SocialMoreWidget extends StatefulWidget {
  const SocialMoreWidget({Key? key}) : super(key: key);

  @override
  _SocialMoreWidgetState createState() => _SocialMoreWidgetState();
}

class _SocialMoreWidgetState extends State<SocialMoreWidget> {
  late SocialMoreModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialMoreModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
          child: Container(
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 42.0,
                            icon: Icon(
                              FFIcons.kstateEmergencyCall,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 22.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Calls',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    fontSize: 14.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 42.0,
                            icon: Icon(
                              FFIcons.kmaskGroup182,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 22.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Bot',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    fontSize: 14.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 42.0,
                            icon: FaIcon(
                              FontAwesomeIcons.fileAlt,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 22.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Files',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    fontSize: 14.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 42.0,
                            icon: FaIcon(
                              FontAwesomeIcons.solidBookmark,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 20.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Saved',
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 42.0,
                            icon: Icon(
                              Icons.chat_bubble,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 22.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Safety Alerts',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    fontSize: 14.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 42.0,
                            icon: Icon(
                              Icons.notifications,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 22.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Notificatons',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    fontSize: 14.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 42.0,
                            icon: Icon(
                              Icons.settings_outlined,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 22.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    fontSize: 14.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 24.0,
                            borderWidth: 1.0,
                            buttonSize: 42.0,
                            icon: FaIcon(
                              FontAwesomeIcons.archive,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 22.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Mock elections',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    fontSize: 14.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
          child: Container(
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.iconLabelModel1,
                          updateCallback: () => setState(() {}),
                          child: IconLabelWidget(
                            iconData: Icon(
                              FFIcons.kstateEmergencyCall,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            iconLabel: 'Calls',
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
                              FFIcons.kmaskGroup182,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            iconLabel: 'Bot',
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
                              FontAwesomeIcons.fileAlt,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            iconLabel: 'Files',
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
                              Icons.bookmark,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            iconLabel: 'Saved',
                            onTap: () async {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.iconLabelModel5,
                          updateCallback: () => setState(() {}),
                          child: IconLabelWidget(
                            iconData: Icon(
                              Icons.chat_bubble_outline,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            iconLabel: 'Safety Alerts',
                            onTap: () async {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.iconLabelModel6,
                          updateCallback: () => setState(() {}),
                          child: IconLabelWidget(
                            iconData: Icon(
                              Icons.notifications_active_outlined,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            iconLabel: 'Notifications',
                            onTap: () async {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.iconLabelModel7,
                          updateCallback: () => setState(() {}),
                          child: IconLabelWidget(
                            iconData: Icon(
                              Icons.settings_outlined,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            iconLabel: 'Settings',
                            onTap: () async {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
