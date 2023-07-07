import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_control_model.dart';
export 'privacy_control_model.dart';

class PrivacyControlWidget extends StatefulWidget {
  const PrivacyControlWidget({Key? key}) : super(key: key);

  @override
  _PrivacyControlWidgetState createState() => _PrivacyControlWidgetState();
}

class _PrivacyControlWidgetState extends State<PrivacyControlWidget> {
  late PrivacyControlModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyControlModel());
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
        appBar: AppBar(
          backgroundColor: Color(0xFFF99546),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              FFIcons.kleftArrow,
              color: FlutterFlowTheme.of(context).secondary,
              size: 30.0,
            ),
            onPressed: () async {
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
            },
          ),
          title: Text(
            'Privacy control',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).secondary,
                  fontSize: 22.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 40.0, 0.0, 0.0),
                        child: SelectionArea(
                            child: Text(
                          'Privacy',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: FlutterFlowTheme.of(context).secondary,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleMediumFamily),
                              ),
                        )),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 490.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF3F4040),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 5.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'privacyoptions',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.topToBottom,
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
                                    )),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 1.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 25.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                          'privacyoptions',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .topToBottom,
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 0.3,
                              color: Color(0xFFB0B0B0),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can message me?',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 25.0,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can find my profile?',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25.0,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can view my public \nprofile?',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25.0,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can view my private\n profile?',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25.0,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'who can view my followers\nlist?',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25.0,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectionArea(
                                      child: Text(
                                    'Make my connection visible \nto..',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  )),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 1.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 25.0,
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
                    Container(
                      width: double.infinity,
                      color: Color(0x00000000),
                      child: ExpandableNotifier(
                        initialExpanded: false,
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 0.0, 0.0),
                            child: ListTile(
                              title: Text(
                                'Who can call me?',
                                style: FlutterFlowTheme.of(context).titleSmall,
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          collapsed: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ],
                          ),
                          expanded: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue1 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue1 = newValue!);
                                  },
                                  title: Text(
                                    'Anybody',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                              Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue2 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue2 = newValue!);
                                  },
                                  title: Text(
                                    'My contacts',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                              Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Color(0xFF95A1AC),
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue3 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue3 = newValue!);
                                  },
                                  title: Text(
                                    'My connections',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                            expandIcon: Icons.keyboard_arrow_down,
                            collapseIcon: Icons.keyboard_arrow_up,
                            iconColor: FlutterFlowTheme.of(context).secondary,
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
      ),
    );
  }
}
