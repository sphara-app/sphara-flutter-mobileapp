import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VoiceactivationoptionsWidget extends StatefulWidget {
  const VoiceactivationoptionsWidget({Key? key}) : super(key: key);

  @override
  _VoiceactivationoptionsWidgetState createState() =>
      _VoiceactivationoptionsWidgetState();
}

class _VoiceactivationoptionsWidgetState
    extends State<VoiceactivationoptionsWidget> {
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
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('AppSettings');
                            },
                            child: Icon(
                              FFIcons.kleftArrow,
                              color: Color(0xFFF99546),
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                    child: SelectionArea(
                        child: Text(
                      'Voice Activation',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                    child: SelectionArea(
                        child: Text(
                      'Select the Code that will be used for voice alarm \nactivation',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText2Family,
                            fontSize: 14,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText2Family),
                          ),
                    )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                    child: Container(
                      width: 335,
                      height: 520,
                      decoration: BoxDecoration(
                        color: Color(0xFF505050),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            '',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      alignment: AlignmentDirectional(0, 0.050000000000000044),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                'Choose Code',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: Color(0xFF707070),
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              )),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Container(
                                width: 310,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 12, 0),
                                    child: ListTile(
                                      title: Text(
                                        'Code Red',
                                        style:
                                            FlutterFlowTheme.of(context).title3,
                                      ),
                                      subtitle: Text(
                                        'for fire/smoke',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                      ),
                                      trailing: Icon(
                                        FFIcons.kvoiceRecognition,
                                        color: Color(0x00F99546),
                                        size: 20,
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      dense: false,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: 310,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                ),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed('VoiceActivation1');
                                    },
                                    child: ListTile(
                                      title: Text(
                                        'Code White',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .title3Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3Family),
                                            ),
                                      ),
                                      subtitle: Text(
                                        'for violent situation',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2Family,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2Family),
                                            ),
                                      ),
                                      dense: false,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: 310,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: ListTile(
                                    title: Text(
                                      'Code Silver',
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      'Person with a weapon',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                    trailing: Icon(
                                      FFIcons.kvoiceRecognition,
                                      color: Color(0x00F99546),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: 310,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: ListTile(
                                    title: Text(
                                      'Code Blue',
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      'Cardiac Arrest/Medical Emergency',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                    trailing: Icon(
                                      FFIcons.kvoiceRecognition,
                                      color: Color(0x00F99546),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: 310,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: ListTile(
                                    title: Text(
                                      'Code Black',
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      'Bomb threat/suspicious object',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                    trailing: Icon(
                                      FFIcons.kvoiceRecognition,
                                      color: Color(0x00F99546),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: 310,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: ListTile(
                                    title: Text(
                                      'Code Purple',
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      'Hostage Taking',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                    trailing: Icon(
                                      FFIcons.kvoiceRecognition,
                                      color: Color(0x00F99546),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Container(
                              width: 310,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: ListTile(
                                    title: Text(
                                      'Choose Your Own',
                                      style:
                                          FlutterFlowTheme.of(context).title3,
                                    ),
                                    subtitle: Text(
                                      'Choose your own custom code',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                    trailing: Icon(
                                      FFIcons.kvoiceRecognition,
                                      color: Color(0x00F99546),
                                      size: 20,
                                    ),
                                    tileColor: Color(0xFFF5F5F5),
                                    dense: false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
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
          ],
        ),
      ),
    );
  }
}
