import '../components/navbar_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnlocklivetrackingWidget extends StatefulWidget {
  const UnlocklivetrackingWidget({Key? key}) : super(key: key);

  @override
  _UnlocklivetrackingWidgetState createState() =>
      _UnlocklivetrackingWidgetState();
}

class _UnlocklivetrackingWidgetState extends State<UnlocklivetrackingWidget> {
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  bool? switchListTileValue3;
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Color(0xFFF99546),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              FFIcons.kleftArrow,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Live Tracking',
            style: FlutterFlowTheme.of(context).title1,
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 1, 0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  FFIcons.kmore,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2,
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: SvgPicture.asset(
                        'assets/images/Bitmap.svg',
                        width: double.infinity,
                        height: 500,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                        child: Container(
                          width: 320,
                          height: 320,
                          decoration: BoxDecoration(
                            color: Color(0x274285F4),
                            shape: BoxShape.circle,
                          ),
                          alignment: AlignmentDirectional(0, 0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.25, -0.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 240, 0, 0),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0xFFF99546),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.2, -0.05),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 210, 0, 0),
                        child: Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0xFFF99546),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'You',
                            style: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText2Family,
                                  color: Colors.white,
                                  fontSize: 14,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText2Family),
                                ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 340, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      shape: BoxShape.circle,
                                    ),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.my_location,
                                        color: Color(0xFF454545),
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        shape: BoxShape.circle,
                                      ),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: Icon(
                                          Icons.assistant_direction,
                                          color: Color(0xFF454545),
                                          size: 30,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
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
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
                  child: Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Color(0xFF444444),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SwitchListTile(
                          value: switchListTileValue1 ??= false,
                          onChanged: (newValue) async {
                            setState(() => switchListTileValue1 = newValue!);
                          },
                          title: Text(
                            'Location live tracking ON/OFF',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          activeColor: Color(0xFFF99546),
                          activeTrackColor: Color(0xFF8B8B8B),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                        SwitchListTile(
                          value: switchListTileValue2 ??= false,
                          onChanged: (newValue) async {
                            setState(() => switchListTileValue2 = newValue!);
                          },
                          title: Text(
                            'Share with emergency contacts',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          activeColor: Color(0xFFF99546),
                          activeTrackColor: Color(0xFF8B8B8B),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                        SwitchListTile(
                          value: switchListTileValue3 ??= false,
                          onChanged: (newValue) async {
                            setState(() => switchListTileValue3 = newValue!);
                          },
                          title: Text(
                            'Share with police',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          activeColor: Color(0xFFF99546),
                          activeTrackColor: Color(0xFF8B8B8B),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF454545),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                      spreadRadius: 4,
                    )
                  ],
                ),
                child: NavbarWidget(
                  homecolumn: Color(0xFFB0B0B0),
                  locationcolumn: Color(0xFFF99546),
                  timercolumn: Color(0xFFB0B0B0),
                  socialcolumn: Color(0xFFB0B0B0),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xAD3A3A3A),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, -0.35),
                child: Container(
                  width: 320,
                  height: 270,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Icon(
                          FFIcons.kmaskGroup283,
                          color: Color(0xFFF99546),
                          size: 40,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Unlock Live Tracking',
                          style: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle1Family,
                                color: Colors.black,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle1Family),
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                        child: Text(
                          'To avail SPHARA real time tracking\nfeature, please view our subscription\nplan.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle1Family,
                                color: Color(0xFF909090),
                                fontSize: 16,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle1Family),
                              ),
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        indent: 1,
                        color: Color(0xFFBBBBBB),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'unlocklivetracking1',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Text(
                            'VIEW PLANS',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 14,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .subtitle2Family),
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
    );
  }
}
