import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'triggeroptionselection_model.dart';
export 'triggeroptionselection_model.dart';

class TriggeroptionselectionWidget extends StatefulWidget {
  const TriggeroptionselectionWidget({Key? key}) : super(key: key);

  @override
  _TriggeroptionselectionWidgetState createState() =>
      _TriggeroptionselectionWidgetState();
}

class _TriggeroptionselectionWidgetState
    extends State<TriggeroptionselectionWidget> {
  late TriggeroptionselectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TriggeroptionselectionModel());
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
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 35.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.chevron_left_sharp,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                      child: SelectionArea(
                          child: Text(
                        'Trigger using button',
                        style: FlutterFlowTheme.of(context).titleMedium,
                      )),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                      child: SelectionArea(
                          child: Text(
                        'Automatically call for help by selecting the mobile button option as well as the triggering method.',
                        style: FlutterFlowTheme.of(context).bodySmall,
                      )),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 0.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(
                          _model.dropDownValue ??= 'Volume Up Button',
                        ),
                        options: [
                          'Power Button',
                          'Volume Up Button',
                          'Volume Down Butto'
                        ],
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue = val),
                        width: 335.0,
                        height: 54.0,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFFB0B0B0),
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Color(0xFFB0B0B0),
                          size: 15.0,
                        ),
                        fillColor: Color(0xFF505050),
                        elevation: 2.0,
                        borderColor: Colors.transparent,
                        borderWidth: 0.0,
                        borderRadius: 40.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 4.0, 12.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 0.0, 0.0),
                      child: SelectionArea(
                          child: Text(
                        'Select Trigger type',
                        style: FlutterFlowTheme.of(context).titleSmall,
                      )),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                      child: FlutterFlowRadioButton(
                        options: [
                          'Press the volume up button for 3 times ',
                          'Press the volume up button for 5 times ',
                          'Hold the volume up button for 3 Seconds',
                          'Hold the volume up button for 5 Seconds',
                          'Disable                                '
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButtonValueController ??=
                            FormFieldController<String>(null),
                        optionHeight: 28.0,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).tertiary,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        selectedTextStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                        textPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 0.0),
                        buttonPosition: RadioButtonPosition.left,
                        direction: Axis.vertical,
                        radioButtonColor: FlutterFlowTheme.of(context).primary,
                        inactiveRadioButtonColor:
                            FlutterFlowTheme.of(context).tertiary,
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
      ),
    );
  }
}
