import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'access_permision_model.dart';
export 'access_permision_model.dart';

class AccessPermisionWidget extends StatefulWidget {
  const AccessPermisionWidget({Key? key}) : super(key: key);

  @override
  _AccessPermisionWidgetState createState() => _AccessPermisionWidgetState();
}

class _AccessPermisionWidgetState extends State<AccessPermisionWidget> {
  late AccessPermisionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccessPermisionModel());
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
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await requestPermission(locationPermission);
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 60.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Access Permission',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 5.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'SPHARA need these  permisisions to give you better user \nexperience.',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 12.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 26.0,
                                ),
                                Expanded(
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.locationCheckBoxValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                            .locationCheckBoxValue = newValue!);
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
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      subtitle: Text(
                                        'For finding emergency service around you.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                      tileColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone_outlined,
                                  color: Color(0xFFB0B0B0),
                                  size: 26.0,
                                ),
                                Expanded(
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.phoneCheckBoxValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                            .phoneCheckBoxValue = newValue!);
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
                                            FFAppState().phonePermission =
                                                false;
                                          });
                                        }
                                      },
                                      title: Text(
                                        'Phone',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      subtitle: Text(
                                        'Allow account security verification.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.perm_contact_cal_outlined,
                                  color: Color(0xFFB0B0B0),
                                  size: 26.0,
                                ),
                                Expanded(
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.contactCheckBoxValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                            .contactCheckBoxValue = newValue!);
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
                                                            child:
                                                                Text('Cancel'),
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
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      subtitle: Text(
                                        'Allow sending messages to friends and family.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.message,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 26.0,
                                ),
                                Expanded(
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.smsCheckBoxValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() => _model.smsCheckBoxValue =
                                            newValue!);
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
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      subtitle: Text(
                                        'Allow sphara app to send and view messages.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.sd_storage_outlined,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 26.0,
                                ),
                                Expanded(
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.storageCheckBoxValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                            .storageCheckBoxValue = newValue!);
                                        if (newValue!) {
                                          FFAppState().update(() {
                                            FFAppState().storagePermission =
                                                true;
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
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      subtitle: Text(
                                        'Allow store data offline.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 26.0,
                                ),
                                Expanded(
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.cameraCheckBoxValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                            .cameraCheckBoxValue = newValue!);
                                        if (newValue!) {
                                          FFAppState().update(() {
                                            FFAppState().cameraPermission =
                                                true;
                                          });
                                        } else {
                                          FFAppState().update(() {
                                            FFAppState().cameraPermission =
                                                false;
                                          });
                                        }
                                      },
                                      title: Text(
                                        'Camera',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                      subtitle: Text(
                                        'Allow capture images.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.mic_none,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 26.0,
                                ),
                                Expanded(
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.microphoneCheckBoxValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.microphoneCheckBoxValue =
                                                newValue!);
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
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      subtitle: Text(
                                        'Allow record voice from app.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 26.0,
                                ),
                                Expanded(
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    child: CheckboxListTile(
                                      value: _model.appSettingCheckBoxValue ??=
                                          false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.appSettingCheckBoxValue =
                                                newValue!);
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
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily),
                                            ),
                                      ),
                                      subtitle: Text(
                                        'Allow sphara app run in the background.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      ),
                                      tileColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      dense: true,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 1.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 100.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
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
                                  onPressed: () async {
                                    context.pushNamed('personalinfo');
                                  },
                                  text: 'ALLOW',
                                  options: FFButtonOptions(
                                    width: 335.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                    elevation: 2.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
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
      ),
    );
  }
}
