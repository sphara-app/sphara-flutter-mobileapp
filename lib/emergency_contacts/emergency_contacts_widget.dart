import '../components/addingnewcontact_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmergencyContactsWidget extends StatefulWidget {
  const EmergencyContactsWidget({Key? key}) : super(key: key);

  @override
  _EmergencyContactsWidgetState createState() =>
      _EmergencyContactsWidgetState();
}

class _EmergencyContactsWidgetState extends State<EmergencyContactsWidget> {
  bool? checkboxListTileValue10;
  bool? checkboxListTileValue1;
  bool? checkboxListTileValue2;
  bool? checkboxListTileValue3;
  bool? checkboxListTileValue4;
  bool? checkboxListTileValue5;
  bool? checkboxListTileValue6;
  bool? checkboxListTileValue7;
  bool? checkboxListTileValue8;
  bool? checkboxListTileValue9;
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
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/bg.svg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.chevron_left_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 20, 0),
                                  child: Text(
                                    'SAVE',
                                    style: FlutterFlowTheme.of(context)
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'Set Up Emergency Contacts',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'Your emergency contacts will receive the alert when\nyou trigger the emergency alert. you are limit to add\nonly 5 emergency contact members.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height: 500,
                                        child: AddingnewcontactWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: 'MANUALLY ADD CONTACT',
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'Select Contacts as',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Emergency Contacts',
                                    options: FFButtonOptions(
                                      width: 160,
                                      height: 30,
                                      color: Color(0x00F99546),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2Family,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Friends',
                                    options: FFButtonOptions(
                                      width: 70,
                                      height: 30,
                                      color: Color(0x00F99546),
                                      textStyle: FlutterFlowTheme.of(context)
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
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Family',
                                    options: FFButtonOptions(
                                      width: 65,
                                      height: 30,
                                      color: Color(0x00F99546),
                                      textStyle: FlutterFlowTheme.of(context)
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
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/download_(1).jfif',
                                        ),
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
                                          value: checkboxListTileValue1 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue1 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'Kathy Payne',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .subtitle2Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryColor,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                                ),
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/photo-1438761681033-6461ffad8d80.jfif',
                                          fit: BoxFit.cover,
                                        ),
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
                                          value: checkboxListTileValue2 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue2 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'Frances Hawkins',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/images.jfif',
                                        ),
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
                                          value: checkboxListTileValue3 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue3 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'dsjbjsjd',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/images_(1).jfif',
                                        ),
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
                                          value: checkboxListTileValue4 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue4 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'Kathy Payne',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/download.jfif',
                                        ),
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
                                          value: checkboxListTileValue5 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue5 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'Kathy Payne',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/images_(5).jfif',
                                        ),
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
                                          value: checkboxListTileValue6 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue6 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'sdfsdgh',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/download_(1).jfif',
                                        ),
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
                                          value: checkboxListTileValue7 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue7 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'Kathy Payne',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/images_(4).jfif',
                                        ),
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
                                          value: checkboxListTileValue8 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue8 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'Kathy Payne',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/download_(2).jfif',
                                        ),
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
                                          value: checkboxListTileValue9 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue9 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'etrdt',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/download.png',
                                        ),
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
                                          value: checkboxListTileValue10 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                checkboxListTileValue10 =
                                                    newValue!);
                                          },
                                          title: Text(
                                            'Kathy Payne',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
