import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'unlocklivetracking_model.dart';
export 'unlocklivetracking_model.dart';

class UnlocklivetrackingWidget extends StatefulWidget {
  const UnlocklivetrackingWidget({Key? key}) : super(key: key);

  @override
  _UnlocklivetrackingWidgetState createState() =>
      _UnlocklivetrackingWidgetState();
}

class _UnlocklivetrackingWidgetState extends State<UnlocklivetrackingWidget> {
  late UnlocklivetrackingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnlocklivetrackingModel());
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
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Live Tracking',
            style: FlutterFlowTheme.of(context).displaySmall,
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  FFIcons.kmore,
                  color: Colors.white,
                  size: 20.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: SvgPicture.asset(
                          'assets/images/Bitmap.svg',
                          width: double.infinity,
                          height: 540.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 80.0, 0.0, 0.0),
                          child: Container(
                            width: 320.0,
                            height: 320.0,
                            decoration: BoxDecoration(
                              color: Color(0x274285F4),
                              shape: BoxShape.circle,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.25, -0.3),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 240.0, 0.0, 0.0),
                          child: Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF99546),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 3.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.2, -0.05),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 210.0, 0.0, 0.0),
                          child: Container(
                            width: 40.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF99546),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'You',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 340.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        shape: BoxShape.circle,
                                      ),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 60.0,
                                        icon: Icon(
                                          Icons.my_location,
                                          color: Color(0xFF454545),
                                          size: 30.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          shape: BoxShape.circle,
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.assistant_direction,
                                            color: Color(0xFF454545),
                                            size: 30.0,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 80.0),
                    child: Container(
                      width: double.infinity,
                      height: 180.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF444444),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SwitchListTile(
                            value: _model.switchListTileValue1 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue1 = newValue!);
                            },
                            title: Text(
                              'Location live tracking ON/OFF',
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            activeColor: Color(0xFFF99546),
                            activeTrackColor: Color(0xFF8B8B8B),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SwitchListTile(
                            value: _model.switchListTileValue2 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue2 = newValue!);
                            },
                            title: Text(
                              'Share with emergency contacts',
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: Color(0xFFF99546),
                            activeTrackColor: Color(0xFF8B8B8B),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                          SwitchListTile(
                            value: _model.switchListTileValue3 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue3 = newValue!);
                            },
                            title: Text(
                              'Share with police',
                              style: FlutterFlowTheme.of(context).headlineSmall,
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
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xAD3A3A3A),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, -0.35),
                  child: Container(
                    width: 300.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Icon(
                            FFIcons.kmaskGroup283,
                            color: Color(0xFFF99546),
                            size: 40.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'Unlock Live Tracking',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: Colors.black,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 20.0),
                            child: Text(
                              'To avail SPHARA real time tracking\nfeature, please view our subscription\nplan.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontSize: 16.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                          indent: 1.0,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('unlocklivetracking1');
                            },
                            child: Text(
                              'View Plans',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
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
