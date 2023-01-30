import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrivacyoptionsWidget extends StatefulWidget {
  const PrivacyoptionsWidget({Key? key}) : super(key: key);

  @override
  _PrivacyoptionsWidgetState createState() => _PrivacyoptionsWidgetState();
}

class _PrivacyoptionsWidgetState extends State<PrivacyoptionsWidget> {
  bool? checkboxListTileValue1;
  bool? checkboxListTileValue2;
  bool? checkboxListTileValue3;
  bool? checkboxListTileValue4;
  bool? checkboxListTileValue5;
  bool? checkboxListTileValue6;
  bool? checkboxListTileValue7;
  bool? checkboxListTileValue8;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed(
        'AppSettings',
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    });
  }

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
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Privacy control',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.of(context).secondaryColor,
                fontSize: 22,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).title2Family),
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
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
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.95, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        'Privacy',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 800,
                      decoration: BoxDecoration(
                        color: Color(0xFF3F4040),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 5),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'PrivacyControl',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                      ),
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                      'who can call me?',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    )),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 1,
                                      borderWidth: 1,
                                      buttonSize: 40,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 25,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                          'PrivacyControl',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .bottomToTop,
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue1 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue1 = newValue!);
                                  },
                                  title: Text(
                                    'Anybody',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue2 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue2 = newValue!);
                                  },
                                  title: Text(
                                    'My Contacts',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue3 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue3 = newValue!);
                                  },
                                  title: Text(
                                    'My Connections',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue4 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue4 = newValue!);
                                  },
                                  title: Text(
                                    'Friends',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue5 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue5 = newValue!);
                                  },
                                  title: Text(
                                    'Family',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue6 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue6 = newValue!);
                                  },
                                  title: Text(
                                    'Friends of Friends',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue7 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue7 = newValue!);
                                  },
                                  title: Text(
                                    'Emergency Contacts',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: checkboxListTileValue8 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        checkboxListTileValue8 = newValue!);
                                  },
                                  title: Text(
                                    'Nobody',
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  dense: true,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 0.3,
                              color: Color(0xFFB0B0B0),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 20, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can message me?',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 0.3,
                              color: Color(0xFFB0B0B0),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can find my profile?',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 0.3,
                              color: Color(0xFFB0B0B0),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can view my public \nprofile?',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 0.3,
                              color: Color(0xFFB0B0B0),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can view my private\n profile?',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 0.3,
                              color: Color(0xFFB0B0B0),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can view my followers\nlist?',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 0.3,
                              color: Color(0xFFB0B0B0),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'Make my connection visible \nto..',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1,
                                    borderWidth: 1,
                                    buttonSize: 40,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}
