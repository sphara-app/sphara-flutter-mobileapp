import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TriggeroptionselectionWidget extends StatefulWidget {
  const TriggeroptionselectionWidget({Key? key}) : super(key: key);

  @override
  _TriggeroptionselectionWidgetState createState() =>
      _TriggeroptionselectionWidgetState();
}

class _TriggeroptionselectionWidgetState
    extends State<TriggeroptionselectionWidget> {
  String? dropDownValue;
  String? radioButtonValue;
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                    child: SelectionArea(
                        child: Text(
                      'Trigger using button',
                      style: FlutterFlowTheme.of(context).subtitle1,
                    )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                    child: SelectionArea(
                        child: Text(
                      'Automatically call for help by selecting the mobile button option as well as the triggering method',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                    child: FlutterFlowDropDown<String>(
                      initialOption: dropDownValue ??= 'Volume Up Button',
                      options: [
                        'Power Button',
                        'Volume Up Button',
                        'Volume Down Butto'
                      ],
                      onChanged: (val) => setState(() => dropDownValue = val),
                      width: 335,
                      height: 54,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: Color(0xFFB0B0B0),
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xFFB0B0B0),
                        size: 15,
                      ),
                      fillColor: Color(0xFF505050),
                      elevation: 2,
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      borderRadius: 40,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 40, 0, 0),
                    child: SelectionArea(
                        child: Text(
                      'Select Trigger type',
                      style: FlutterFlowTheme.of(context).subtitle2,
                    )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                    child: FlutterFlowRadioButton(
                      options: [
                        'Press the volume up button for 3 times   ',
                        'Press the volume up button for 5 times   ',
                        'Hold the volume up button for 3 Seconds',
                        'Hold the volume up button for 5 Seconds',
                        'Disable                                                           '
                      ].toList(),
                      onChanged: (val) =>
                          setState(() => radioButtonValue = val),
                      optionHeight: 28,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                      selectedTextStyle: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 60, 0),
                      buttonPosition: RadioButtonPosition.right,
                      direction: Axis.vertical,
                      radioButtonColor:
                          FlutterFlowTheme.of(context).primaryColor,
                      inactiveRadioButtonColor:
                          FlutterFlowTheme.of(context).tertiaryColor,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
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
