import '../components/whatsapp_access_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SocialMediaAccessWidget extends StatefulWidget {
  const SocialMediaAccessWidget({Key? key}) : super(key: key);

  @override
  _SocialMediaAccessWidgetState createState() =>
      _SocialMediaAccessWidgetState();
}

class _SocialMediaAccessWidgetState extends State<SocialMediaAccessWidget> {
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  bool? switchListTileValue3;
  bool? switchListTileValue4;
  bool? switchListTileValue5;
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.chevron_left_sharp,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 24,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Text(
                    'Social Media Access',
                    style: FlutterFlowTheme.of(context).subtitle1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: Text(
                    'Connect SPHARA with social media to alert your family and friends in times of emergency',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                  child: InkWell(
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            child: Container(
                              height: 800,
                              child: WhatsappAccessWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 26,
                        ),
                        Expanded(
                          child: SwitchListTile(
                            value: switchListTileValue1 ??= false,
                            onChanged: (newValue) async {
                              setState(() => switchListTileValue1 = newValue!);
                            },
                            title: Text(
                              'Whatsapp',
                              style: FlutterFlowTheme.of(context).title3,
                            ),
                            subtitle: Text(
                              'Allows App to send alert message Via Whatsapp',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).tertiaryColor,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.facebookSquare,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 26,
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: switchListTileValue2 ??= false,
                          onChanged: (newValue) async {
                            setState(() => switchListTileValue2 = newValue!);
                          },
                          title: Text(
                            'Facebook Post',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Allows App to post alert message in Facebook wall',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          tileColor: FlutterFlowTheme.of(context).tertiaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.instagramSquare,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 26,
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: switchListTileValue3 ??= false,
                          onChanged: (newValue) async {
                            setState(() => switchListTileValue3 = newValue!);
                          },
                          title: Text(
                            'Instagram',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Allows App to post alert message in Instagram wall',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          tileColor: FlutterFlowTheme.of(context).tertiaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.twitterSquare,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 26,
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: switchListTileValue4 ??= false,
                          onChanged: (newValue) async {
                            setState(() => switchListTileValue4 = newValue!);
                          },
                          title: Text(
                            'Whatsapp',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Allows App to post alert messagein Twitter wall',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          tileColor: FlutterFlowTheme.of(context).tertiaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        size: 26,
                      ),
                      Expanded(
                        child: SwitchListTile(
                          value: switchListTileValue5 ??= false,
                          onChanged: (newValue) async {
                            setState(() => switchListTileValue5 = newValue!);
                          },
                          title: Text(
                            'Whatsapp',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Allows App to post alert message in Linked wall',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          tileColor: FlutterFlowTheme.of(context).tertiaryColor,
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).tertiaryColor,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
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
    );
  }
}
