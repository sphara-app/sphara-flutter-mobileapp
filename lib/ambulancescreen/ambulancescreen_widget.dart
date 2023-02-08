import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AmbulancescreenWidget extends StatefulWidget {
  const AmbulancescreenWidget({Key? key}) : super(key: key);

  @override
  _AmbulancescreenWidgetState createState() => _AmbulancescreenWidgetState();
}

class _AmbulancescreenWidgetState extends State<AmbulancescreenWidget> {
  bool isMediaUploading1 = false;
  FFLocalFile uploadedLocalFile1 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading2 = false;
  FFLocalFile uploadedLocalFile2 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading3 = false;
  FFLocalFile uploadedLocalFile3 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading4 = false;
  FFLocalFile uploadedLocalFile4 = FFLocalFile(bytes: Uint8List.fromList([]));

  List<String>? choiceChipsValues;
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
            SvgPicture.asset(
              'assets/images/bg.svg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 2, 0, 0),
                          child: Text(
                            'Incident Report-Ambulance',
                            style: FlutterFlowTheme.of(context).subtitle1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                        child: Text(
                          'Please fill following information as it will provide better insight on incident.',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'Call ambulance for?',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color: Colors.white,
                                fontSize: 14,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: FlutterFlowChoiceChips(
                    options: [
                      ChipData('Broken Bones'),
                      ChipData('Road Accident'),
                      ChipData('Bleeding'),
                      ChipData('Trauma'),
                      ChipData('Poisioning'),
                      ChipData('Fainting'),
                      ChipData('Sezire'),
                      ChipData('Burn/Scalds'),
                      ChipData('Breathing Difficulty'),
                      ChipData('Allergitic Reaction'),
                      ChipData('Stroke'),
                      ChipData('Chest Pain'),
                      ChipData('Others')
                    ],
                    onChanged: (val) => setState(() => choiceChipsValues = val),
                    selectedChipStyle: ChipStyle(
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText2
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText2Family,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText2Family),
                          ),
                      iconColor: FlutterFlowTheme.of(context).secondaryColor,
                      iconSize: 18,
                      elevation: 0,
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).alternate,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText2
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText2Family,
                            color: Color(0xFFE3E7ED),
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText2Family),
                          ),
                      iconColor: FlutterFlowTheme.of(context).secondaryColor,
                      iconSize: 18,
                      elevation: 0,
                    ),
                    chipSpacing: 20,
                    multiselect: true,
                    initialized: choiceChipsValues != null,
                    alignment: WrapAlignment.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          'How many people need treatment?',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color: Colors.white,
                                fontSize: 14,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF505050),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        filled: true,
                        fillColor: Color(0xFF505050),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Text(
                            'Take some pictures',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  color: Colors.white,
                                  fontSize: 14,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
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
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
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
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
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
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
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
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
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
                Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('AmbulanceConfirmed');
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
