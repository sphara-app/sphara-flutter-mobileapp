import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrivacyControlWidget extends StatefulWidget {
  const PrivacyControlWidget({Key? key}) : super(key: key);

  @override
  _PrivacyControlWidgetState createState() => _PrivacyControlWidgetState();
}

class _PrivacyControlWidgetState extends State<PrivacyControlWidget> {
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.95, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                    child: SelectionArea(
                        child: Text(
                      'Privacy',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle1Family,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle1Family),
                          ),
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 490,
                    decoration: BoxDecoration(
                      color: Color(0xFF3F4040),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 5),
                          child: InkWell(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SelectionArea(
                                    child: Text(
                                  'who can call me?',
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
                                )),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 1,
                                  borderWidth: 1,
                                  buttonSize: 40,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    size: 25,
                                  ),
                                  onPressed: () async {
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'who can message me?',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              )),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 1,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'who can find my profile?',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              )),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 1,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'who can view my public \nprofile?',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              )),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 1,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'who can view my private\n profile?',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              )),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 1,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'who can view my followers\nlist?',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              )),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 1,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'Make my connection visible \nto..',
                                style: FlutterFlowTheme.of(context).subtitle1,
                              )),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 1,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
