import '/components/whatsapp_access/whatsapp_access_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'social_media_access_model.dart';
export 'social_media_access_model.dart';

class SocialMediaAccessWidget extends StatefulWidget {
  const SocialMediaAccessWidget({Key? key}) : super(key: key);

  @override
  _SocialMediaAccessWidgetState createState() =>
      _SocialMediaAccessWidgetState();
}

class _SocialMediaAccessWidgetState extends State<SocialMediaAccessWidget> {
  late SocialMediaAccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialMediaAccessModel());
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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 35.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.chevron_left_sharp,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 30.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Text(
                        'Social Media Access',
                        style: FlutterFlowTheme.of(context).titleMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                      child: Text(
                        'Connect SPHARA with social media to alert your family and friends in times of emergency.',
                        style: FlutterFlowTheme.of(context).bodySmall,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_model.unfocusNode),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: Container(
                                    height: 800.0,
                                    child: WhatsappAccessWidget(),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => FocusScope.of(context)
                                          .requestFocus(_model.unfocusNode),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: Container(
                                          height: 800.0,
                                          child: WhatsappAccessWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile(
                                value: _model.switchListTileValue1 ??= false,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.switchListTileValue1 = newValue!);
                                },
                                title: Text(
                                  'Whatsapp',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall,
                                ),
                                subtitle: Text(
                                  'Allows App to send alert message Via Whatsapp.',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                                tileColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebookSquare,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 26.0,
                          ),
                          Expanded(
                            child: SwitchListTile(
                              value: _model.switchListTileValue2 ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue2 = newValue!);
                              },
                              title: Text(
                                'Facebook Post',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                'Allows App to post alert message in Facebook wall.',
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                              tileColor: FlutterFlowTheme.of(context).tertiary,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.instagramSquare,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 26.0,
                          ),
                          Expanded(
                            child: SwitchListTile(
                              value: _model.switchListTileValue3 ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue3 = newValue!);
                              },
                              title: Text(
                                'Instagram',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                'Allows App to post alert message in Instagram wall.',
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                              tileColor: FlutterFlowTheme.of(context).tertiary,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.twitterSquare,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 26.0,
                          ),
                          Expanded(
                            child: SwitchListTile(
                              value: _model.switchListTileValue4 ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue4 = newValue!);
                              },
                              title: Text(
                                'Twitter',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                'Allows App to post alert messagein Twitter wall.',
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                              tileColor: FlutterFlowTheme.of(context).tertiary,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 26.0,
                          ),
                          Expanded(
                            child: SwitchListTile(
                              value: _model.switchListTileValue5 ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue5 = newValue!);
                              },
                              title: Text(
                                'Linked in',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              subtitle: Text(
                                'Allows App to post alert message in Linked wall.',
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                              tileColor: FlutterFlowTheme.of(context).tertiary,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              activeTrackColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
