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

class ReportfirealertWidget extends StatefulWidget {
  const ReportfirealertWidget({Key? key}) : super(key: key);

  @override
  _ReportfirealertWidgetState createState() => _ReportfirealertWidgetState();
}

class _ReportfirealertWidgetState extends State<ReportfirealertWidget> {
  bool isMediaUploading1 = false;
  FFLocalFile uploadedLocalFile1 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading2 = false;
  FFLocalFile uploadedLocalFile2 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading3 = false;
  FFLocalFile uploadedLocalFile3 = FFLocalFile(bytes: Uint8List.fromList([]));

  bool isMediaUploading4 = false;
  FFLocalFile uploadedLocalFile4 = FFLocalFile(bytes: Uint8List.fromList([]));

  String? choiceChipsValue1;
  TextEditingController? textController;
  String? choiceChipsValue2;
  String? choiceChipsValue3;
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
            SingleChildScrollView(
              child: Column(
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
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'Incident Report-Fire ',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                      child: Text(
                        'Please fill the following information as it will provide better insight on incident.',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(),
                      child: Container(
                        width: 80,
                        child: TextFormField(
                          controller: textController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Comment',
                            labelStyle: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  color: Color(0xFF909090),
                                  fontSize: 18,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                            hintText: 'There is fire at mall',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText2Family,
                                  fontSize: 14,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText2Family),
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                          maxLines: 4,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'Are you seeing people injured?',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: FlutterFlowChoiceChips(
                        options: [ChipData('Injured'), ChipData('Not Injured')],
                        onChanged: (val) =>
                            setState(() => choiceChipsValue1 = val?.first),
                        selectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText2Family,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText2Family),
                              ),
                          iconColor: Colors.white,
                          iconSize: 18,
                          elevation: 0,
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText2Family,
                                color: Color(0xFFE3E7ED),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText2Family),
                              ),
                          iconColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          iconSize: 18,
                          elevation: 0,
                        ),
                        chipSpacing: 20,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'What is the dimension of the fire?',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Colors.white,
                              fontSize: 14,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: FlutterFlowChoiceChips(
                        options: [
                          ChipData('Small'),
                          ChipData('Medium'),
                          ChipData('Big')
                        ],
                        onChanged: (val) =>
                            setState(() => choiceChipsValue2 = val?.first),
                        selectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText2Family,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText2Family),
                              ),
                          iconColor: Colors.white,
                          iconSize: 18,
                          elevation: 0,
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText2Family,
                                color: Color(0xFFE3E7ED),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText2Family),
                              ),
                          iconColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          iconSize: 18,
                          elevation: 0,
                        ),
                        chipSpacing: 20,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'Are you seeing flames or smoke?',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Colors.white,
                              fontSize: 14,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: FlutterFlowChoiceChips(
                        options: [
                          ChipData('Flames & Smoke'),
                          ChipData('Just Smoke')
                        ],
                        onChanged: (val) =>
                            setState(() => choiceChipsValue3 = val?.first),
                        selectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText2Family,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText2Family),
                              ),
                          iconColor: Colors.white,
                          iconSize: 18,
                          elevation: 0,
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyText2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText2Family,
                                color: Color(0xFFE3E7ED),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText2Family),
                              ),
                          iconColor:
                              FlutterFlowTheme.of(context).secondaryColor,
                          iconSize: 18,
                          elevation: 0,
                        ),
                        chipSpacing: 20,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'Take some pictures',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Colors.white,
                              fontSize: 14,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
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
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('SendButton pressed ...');
                        },
                        text: 'SEND',
                        options: FFButtonOptions(
                          width: 335,
                          height: 50,
                          color: Color(0xFFF99546),
                          textStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily:
                                    FlutterFlowTheme.of(context).title3Family,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context).title3Family),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
