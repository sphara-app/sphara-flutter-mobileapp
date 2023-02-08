import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditalertmessageWidget extends StatefulWidget {
  const EditalertmessageWidget({Key? key}) : super(key: key);

  @override
  _EditalertmessageWidgetState createState() => _EditalertmessageWidgetState();
}

class _EditalertmessageWidgetState extends State<EditalertmessageWidget> {
  TextEditingController? textController;
  bool? checkboxListTileValue1;
  bool? checkboxListTileValue2;
  bool? checkboxListTileValue3;
  bool? checkboxListTileValue4;
  bool? checkboxListTileValue5;
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
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.chevron_left_sharp,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 30,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'Alert Message',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                    child: Text(
                      'This default message will send the contact number as well as location to your friend\'s Facebook account, WhatsApp account, and mobile contacts in case of emergency.',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Alert Message',
                        hintText: 'Enter you custom alert message',
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      maxLines: 4,
                      minLines: 1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Text(
                        'Click edit to enter customize alert message',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText2Family,
                              fontSize: 14,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText2Family),
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 60, 0, 0),
                      child: Text(
                        'Send Emergency Alert To:',
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 8, 0, 0),
                      child: Text(
                        'You can choose who can receive alert messages',
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText2Family,
                              fontSize: 14,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText2Family),
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                      child: Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Color(0xFF95A1AC),
                        ),
                        child: CheckboxListTile(
                          value: checkboxListTileValue1 ??= false,
                          onChanged: (newValue) async {
                            setState(() => checkboxListTileValue1 = newValue!);
                          },
                          title: Text(
                            'Emergency contacts & first responders',
                            style: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .subtitle2Family,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w300,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .subtitle2Family),
                                ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          activeColor: Color(0xFF2B2B2B),
                          checkColor: Color(0xFFF99546),
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color(0xFF95A1AC),
                      ),
                      child: CheckboxListTile(
                        value: checkboxListTileValue2 ??= false,
                        onChanged: (newValue) async {
                          setState(() => checkboxListTileValue2 = newValue!);
                        },
                        title: Text(
                          'Only First-responders',
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                fontSize: 12,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        activeColor: Color(0xFF2B2B2B),
                        checkColor: Color(0xFFF99546),
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color(0xFF95A1AC),
                      ),
                      child: CheckboxListTile(
                        value: checkboxListTileValue3 ??= false,
                        onChanged: (newValue) async {
                          setState(() => checkboxListTileValue3 = newValue!);
                        },
                        title: Text(
                          'Emergency contacts ',
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                fontSize: 12,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        activeColor: Color(0xFF2B2B2B),
                        checkColor: Color(0xFFF99546),
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color(0xFF95A1AC),
                      ),
                      child: CheckboxListTile(
                        value: checkboxListTileValue4 ??= false,
                        onChanged: (newValue) async {
                          setState(() => checkboxListTileValue4 = newValue!);
                        },
                        title: Text(
                          'Verified Volunteers',
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                fontSize: 12,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        activeColor: Color(0xFF2B2B2B),
                        checkColor: Color(0xFFF99546),
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color(0xFF95A1AC),
                      ),
                      child: CheckboxListTile(
                        value: checkboxListTileValue5 ??= false,
                        onChanged: (newValue) async {
                          setState(() => checkboxListTileValue5 = newValue!);
                        },
                        title: Text(
                          'Non-verified volunteers',
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                fontSize: 12,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        activeColor: Color(0xFF2B2B2B),
                        checkColor: Color(0xFFF99546),
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'SAVE',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
