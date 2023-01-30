import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PermissionalertWidget extends StatefulWidget {
  const PermissionalertWidget({Key? key}) : super(key: key);

  @override
  _PermissionalertWidgetState createState() => _PermissionalertWidgetState();
}

class _PermissionalertWidgetState extends State<PermissionalertWidget> {
  bool? checkboxListTileValue1;
  bool? checkboxListTileValue2;
  bool? checkboxListTileValue3;
  bool? checkboxListTileValue4;
  bool? checkboxListTileValue5;
  bool? checkboxListTileValue6;
  bool? checkboxListTileValue7;
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
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                                      .containsKey(FlutterFlowTheme.of(context)
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
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                fontSize: 14,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 26,
                          ),
                        ),
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue1 ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue1 = newValue!);
                              },
                              title: Text(
                                'Location',
                                style: FlutterFlowTheme.of(context)
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
                              ),
                              subtitle: Text(
                                'for finding emergency service around you.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue2 ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue2 = newValue!);
                              },
                              title: Text(
                                'Phone',
                                style: FlutterFlowTheme.of(context)
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
                              ),
                              subtitle: Text(
                                'Allow account security verification.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue3 ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue3 = newValue!);
                              },
                              title: Text(
                                'Contacts',
                                style: FlutterFlowTheme.of(context)
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
                              ),
                              subtitle: Text(
                                'Allow sending messages to friends and family',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
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
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                          child: Icon(
                            Icons.sd_storage_outlined,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 26,
                          ),
                        ),
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue4 ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue4 = newValue!);
                              },
                              title: Text(
                                'Storage',
                                style: FlutterFlowTheme.of(context)
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
                              ),
                              subtitle: Text(
                                'Allow store data offline.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
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
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 26,
                          ),
                        ),
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue5 ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue5 = newValue!);
                              },
                              title: Text(
                                'Camera',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                              subtitle: Text(
                                'Allow capture images.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Icon(
                            Icons.mic_none,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 26,
                          ),
                        ),
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue6 ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue6 = newValue!);
                              },
                              title: Text(
                                'Microphone',
                                style: FlutterFlowTheme.of(context)
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
                              ),
                              subtitle: Text(
                                'Allow record voice from app.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Icon(
                            Icons.settings_outlined,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 26,
                          ),
                        ),
                        Expanded(
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                            child: CheckboxListTile(
                              value: checkboxListTileValue7 ??= true,
                              onChanged: (newValue) async {
                                setState(
                                    () => checkboxListTileValue7 = newValue!);
                              },
                              title: Text(
                                'App settings',
                                style: FlutterFlowTheme.of(context)
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
                              ),
                              subtitle: Text(
                                'Allow sphara app run in the background.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText2Family,
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2Family),
                                    ),
                              ),
                              tileColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              checkColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'permissionalert',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                ),
                              },
                            );
                          },
                          text: 'ALLOW',
                          options: FFButtonOptions(
                            width: 335,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .title3
                                .override(
                                  fontFamily:
                                      FlutterFlowTheme.of(context).title3Family,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xC6333232),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 170,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 30, 0),
                                  child: Icon(
                                    Icons.sd_storage_outlined,
                                    color: Color(0xFF605F5F),
                                    size: 28,
                                  ),
                                ),
                                Text(
                                  'Allow Sphara to access \nlocation, Photos, media and \nfiles on your device?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        color: Colors.black,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'DENY',
                                  options: FFButtonOptions(
                                    width: 80,
                                    height: 30,
                                    color: Color(0x05F99546),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2Family,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family),
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'ALLOW',
                                  options: FFButtonOptions(
                                    width: 80,
                                    height: 30,
                                    color: Color(0x05F99546),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2Family,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family),
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
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
            ],
          ),
        ),
      ),
    );
  }
}
