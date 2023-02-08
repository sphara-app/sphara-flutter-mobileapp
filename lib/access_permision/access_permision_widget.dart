import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccessPermisionWidget extends StatefulWidget {
  const AccessPermisionWidget({Key? key}) : super(key: key);

  @override
  _AccessPermisionWidgetState createState() => _AccessPermisionWidgetState();
}

class _AccessPermisionWidgetState extends State<AccessPermisionWidget> {
  bool? appSettingCheckBoxValue;
  bool? cameraCheckBoxValue;
  bool? contactCheckBoxValue;
  bool? locationCheckBoxValue;
  bool? phoneCheckBoxValue;
  bool? smsCheckBoxValue;
  bool? storageCheckBoxValue;
  bool? microphoneCheckBoxValue;
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
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/images/bg.svg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: InkWell(
                  onTap: () async {
                    await requestPermission(locationPermission);
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'Access Permission',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .subtitle1Family,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .subtitle1Family),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'SPHARA need these  permisisions to give you \nbetter user experience.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 14,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 26,
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                  ),
                                  child: CheckboxListTile(
                                    value: locationCheckBoxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          locationCheckBoxValue = newValue!);
                                      if (newValue!) {
                                        FFAppState().update(() {
                                          FFAppState().locationPermission =
                                              false;
                                        });
                                        await requestPermission(
                                            locationPermission);
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().locationPermission =
                                              false;
                                        });
                                      }
                                    },
                                    title: Text(
                                      'Location',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title3Family,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title3Family),
                                          ),
                                    ),
                                    subtitle: Text(
                                      'for finding emergency service around you.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Icon(
                                  Icons.phone_outlined,
                                  color: Color(0xFFB0B0B0),
                                  size: 26,
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                  ),
                                  child: CheckboxListTile(
                                    value: phoneCheckBoxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => phoneCheckBoxValue = newValue!);
                                      if (newValue!) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title:
                                                  Text('thdhfsfjkfsdf title'),
                                              content: Text(
                                                  'gfjh hkdsfk sdkhsdfk  msg'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Done'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().phonePermission = false;
                                        });
                                      }
                                    },
                                    title: Text(
                                      'Phone',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title3Family,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title3Family),
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Allow account security verification.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Icon(
                                  Icons.perm_contact_cal_outlined,
                                  color: Color(0xFFB0B0B0),
                                  size: 26,
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                  ),
                                  child: CheckboxListTile(
                                    value: contactCheckBoxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          contactCheckBoxValue = newValue!);
                                      if (newValue!) {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'gfssagdasgdd tttttttt'),
                                                      content: Text(
                                                          'dadasdda fdfd dfff gf '),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text('Cancel'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirm'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().contactPermission =
                                              false;
                                        });
                                      }
                                    },
                                    title: Text(
                                      'Contacts',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title3Family,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title3Family),
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Allow sending messages to friends and family.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Icon(
                                  Icons.message,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 26,
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                  ),
                                  child: CheckboxListTile(
                                    value: smsCheckBoxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => smsCheckBoxValue = newValue!);
                                      if (newValue!) {
                                        FFAppState().update(() {
                                          FFAppState().smsPermission = true;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().smsPermission = false;
                                        });
                                      }
                                    },
                                    title: Text(
                                      'SMS',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title3Family,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title3Family),
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Allow sphara app to send and view messages.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                child: Icon(
                                  Icons.sd_storage_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 26,
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                  ),
                                  child: CheckboxListTile(
                                    value: storageCheckBoxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          storageCheckBoxValue = newValue!);
                                      if (newValue!) {
                                        FFAppState().update(() {
                                          FFAppState().storagePermission = true;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().storagePermission =
                                              false;
                                        });
                                      }
                                    },
                                    title: Text(
                                      'Storage',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title3Family,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title3Family),
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Allow store data offline.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 26,
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                  ),
                                  child: CheckboxListTile(
                                    value: cameraCheckBoxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          cameraCheckBoxValue = newValue!);
                                      if (newValue!) {
                                        FFAppState().update(() {
                                          FFAppState().cameraPermission = true;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().cameraPermission = false;
                                        });
                                      }
                                    },
                                    title: Text(
                                      'Camera',
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      'Allow capture images.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Icon(
                                  Icons.mic_none,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 26,
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                  ),
                                  child: CheckboxListTile(
                                    value: microphoneCheckBoxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          microphoneCheckBoxValue = newValue!);
                                      if (newValue!) {
                                        FFAppState().update(() {
                                          FFAppState().microPhonePermission =
                                              true;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().microPhonePermission =
                                              false;
                                        });
                                      }
                                    },
                                    title: Text(
                                      'Microphone',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title3Family,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title3Family),
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Allow record voice from app.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 26,
                                ),
                              ),
                              Expanded(
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                  ),
                                  child: CheckboxListTile(
                                    value: appSettingCheckBoxValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          appSettingCheckBoxValue = newValue!);
                                      if (newValue!) {
                                        FFAppState().update(() {
                                          FFAppState().appSettingPermission =
                                              true;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().appSettingPermission =
                                              false;
                                        });
                                      }
                                    },
                                    title: Text(
                                      'App settings',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .title3Family,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .title3Family),
                                          ),
                                    ),
                                    subtitle: Text(
                                      'Allow sphara app run in the background.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.95),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 80),
                            child: InkWell(
                              onDoubleTap: () async {
                                if (FFAppState().locationPermission == true) {
                                  await requestPermission(locationPermission);
                                } else {
                                  await Future.delayed(
                                      const Duration(milliseconds: 10));
                                }

                                if (FFAppState().contactPermission == true) {
                                  await requestPermission(contactsPermission);
                                } else {
                                  await Future.delayed(
                                      const Duration(milliseconds: 10));
                                }

                                context.pushNamed('permissionalert');
                              },
                              onLongPress: () async {
                                await actions.getAllSelectedPermission(
                                  FFAppState().contactPermission,
                                  FFAppState().phonePermission,
                                  FFAppState().locationPermission,
                                  FFAppState().smsPermission,
                                  FFAppState().storagePermission,
                                  FFAppState().cameraPermission,
                                  FFAppState().microPhonePermission,
                                  FFAppState().appSettingPermission,
                                );
                              },
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('AllowButton pressed ...');
                                },
                                text: 'ALLOW',
                                options: FFButtonOptions(
                                  width: 335,
                                  height: 50,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .title3Family,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .title3Family),
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
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
      ),
    );
  }
}
