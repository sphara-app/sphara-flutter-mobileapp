import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PanicWidget extends StatefulWidget {
  const PanicWidget({Key? key}) : super(key: key);

  @override
  _PanicWidgetState createState() => _PanicWidgetState();
}

class _PanicWidgetState extends State<PanicWidget> {
  bool isMediaUploading1 = false;
  FFLocalFile uploadedLocalFile1 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading2 = false;
  FFLocalFile uploadedLocalFile2 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading3 = false;
  FFLocalFile uploadedLocalFile3 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading4 = false;
  FFLocalFile uploadedLocalFile4 = FFLocalFile(bytes: Uint8List.fromList([]));

  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
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
            Stack(
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
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.chevron_left_sharp,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 24,
                          ),
                          onPressed: () async {
                            context.pop();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              'Incident Report',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle1Family,
                                    fontSize: 18,
                                    letterSpacing: 1,
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
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                              child: Text(
                                'Please fill the following information as it will provide better insight on incident.',
                                style: FlutterFlowTheme.of(context).bodyText2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: TextFormField(
                        controller: textController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Describe problem',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFB0B0B0),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFB0B0B0),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Color(0x00505050),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                        maxLines: 4,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              'Take some pictures',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 70,
                            icon: Icon(
                              FFIcons.kmaskGroup192,
                              color: Color(0xFF686868),
                              size: 50,
                            ),
                            onPressed: () async {
                              final selectedMedia = await selectMedia(
                                multiImage: false,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => isMediaUploading1 = true);
                                var selectedLocalFiles = <FFLocalFile>[];
                                try {
                                  selectedLocalFiles = selectedMedia
                                      .map((m) => FFLocalFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                          ))
                                      .toList();
                                } finally {
                                  isMediaUploading1 = false;
                                }
                                if (selectedLocalFiles.length ==
                                    selectedMedia.length) {
                                  setState(() => uploadedLocalFile1 =
                                      selectedLocalFiles.first);
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 70,
                            icon: Icon(
                              FFIcons.kmaskGroup192,
                              color: Color(0xFF686868),
                              size: 50,
                            ),
                            onPressed: () async {
                              final selectedMedia = await selectMedia(
                                multiImage: false,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => isMediaUploading2 = true);
                                var selectedLocalFiles = <FFLocalFile>[];
                                try {
                                  selectedLocalFiles = selectedMedia
                                      .map((m) => FFLocalFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                          ))
                                      .toList();
                                } finally {
                                  isMediaUploading2 = false;
                                }
                                if (selectedLocalFiles.length ==
                                    selectedMedia.length) {
                                  setState(() => uploadedLocalFile2 =
                                      selectedLocalFiles.first);
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 70,
                            icon: Icon(
                              FFIcons.kmaskGroup192,
                              color: Color(0xFF686868),
                              size: 50,
                            ),
                            onPressed: () async {
                              final selectedMedia = await selectMedia(
                                multiImage: false,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => isMediaUploading3 = true);
                                var selectedLocalFiles = <FFLocalFile>[];
                                try {
                                  selectedLocalFiles = selectedMedia
                                      .map((m) => FFLocalFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                          ))
                                      .toList();
                                } finally {
                                  isMediaUploading3 = false;
                                }
                                if (selectedLocalFiles.length ==
                                    selectedMedia.length) {
                                  setState(() => uploadedLocalFile3 =
                                      selectedLocalFiles.first);
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 70,
                            icon: Icon(
                              FFIcons.kmaskGroup192,
                              color: Color(0xFF686868),
                              size: 50,
                            ),
                            onPressed: () async {
                              final selectedMedia = await selectMedia(
                                multiImage: false,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => isMediaUploading4 = true);
                                var selectedLocalFiles = <FFLocalFile>[];
                                try {
                                  selectedLocalFiles = selectedMedia
                                      .map((m) => FFLocalFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                          ))
                                      .toList();
                                } finally {
                                  isMediaUploading4 = false;
                                }
                                if (selectedLocalFiles.length ==
                                    selectedMedia.length) {
                                  setState(() => uploadedLocalFile4 =
                                      selectedLocalFiles.first);
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'SEND',
                            options: FFButtonOptions(
                              width: 335,
                              height: 50,
                              color: Color(0xFFF99546),
                              textStyle: FlutterFlowTheme.of(context).title3,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
