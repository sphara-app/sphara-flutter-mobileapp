import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppSettingsWidget extends StatefulWidget {
  const AppSettingsWidget({Key? key}) : super(key: key);

  @override
  _AppSettingsWidgetState createState() => _AppSettingsWidgetState();
}

class _AppSettingsWidgetState extends State<AppSettingsWidget> {
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
        child: Container(
          width: double.infinity,
          height: 900,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/images/bg.svg',
                width: double.infinity,
                height: 900,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.chevron_left_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
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
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                          child: Text(
                            'GLOBAL SOCIAL MEDIA SETTINGS',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .subtitle2Family),
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'Chatsettings',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kchatSettings,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            title: Text(
                              'Chat settings',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Change Chat preferences to improve \nyour chat experience',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'Access',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kgroup3971,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 34,
                            ),
                            title: Text(
                              'Sphara Web',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Connect and Access your Chats on    \nanother device',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                          child: Text(
                            'EMERGENCY APP SETTINGS',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .subtitle2Family),
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'Alertmessage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kemergencyAlertMessage,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 24,
                            ),
                            title: Text(
                              'Emergency Alert Messages',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Edit or Configure the emergency alert message',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'Triggerbutton',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kbuttonPressSetup,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 24,
                            ),
                            title: Text(
                              'Button press Setup',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Make emergency calls by pressing \nor holding mobile side buttons',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'Gesturetriggersettings',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kgestureIcon,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 24,
                            ),
                            title: Text(
                              'Gesture Triggers',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Choose gesture to trigger emergency',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'Voiceactivation',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kvoiceRecognition,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 24,
                            ),
                            title: Text(
                              'Voice Recognition',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Choose keyword to trigger emergency',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'AlertDelay',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kdialDelay,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 24,
                            ),
                            title: Text(
                              'Alert Delay',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Customize delay time for alert triggering',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'security',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.ksecurity,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 28,
                            ),
                            title: Text(
                              'Security',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Control your account security with \n2-step verification',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'VolunteeringProfile',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kgroup3619,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 38,
                            ),
                            title: Text(
                              'Volunteer Settings',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Ensure your availability to nearby victims',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: ListTile(
                          leading: Icon(
                            FFIcons.kappIntegration1,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 24,
                          ),
                          title: Text(
                            'App Integration',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          subtitle: Text(
                            'Integrate with social media to alert family and friends at the time of emergency\n',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 20,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          dense: true,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                          child: Text(
                            'GLOBAL APP SETTINGS',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .subtitle2Family),
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'Chooselanguage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.kappLanguage,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 28,
                            ),
                            title: Text(
                              'Change App language',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Choose your  preferred language ',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'ParentalSettings',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              FFIcons.ksvg1,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 24,
                            ),
                            title: Text(
                              'Parental Control',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Set restrictions on content for child age',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'PrivacyControl',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.lock_outlined,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 24,
                            ),
                            title: Text(
                              'Privacy Control',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Set Restrictions on Viewers',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: ListTile(
                          leading: Icon(
                            FFIcons.kmaskGroup2981,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 24,
                          ),
                          title: Text(
                            'Recommendation',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          subtitle: Text(
                            'View suggested channels,groups etc',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 20,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          dense: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.powerOff,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 24,
                          ),
                          title: Text(
                            'Sign Out',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          subtitle: Text(
                            'You can sign out from everywhere',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 20,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          dense: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 30),
                        child: InkWell(
                          onTap: () async {
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      content: Text(
                                          'Are you sure you want to delete this account ? This will permanently erase your account.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('NO'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('YES'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.delete_outline,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 28,
                            ),
                            title: Text(
                              'Delete Account',
                              style: FlutterFlowTheme.of(context).subtitle2,
                            ),
                            subtitle: Text(
                              'Delete your account and data',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            dense: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
