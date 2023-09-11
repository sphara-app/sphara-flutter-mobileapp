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
import 'subscription_model.dart';
export 'subscription_model.dart';

class SubscriptionWidget extends StatefulWidget {
  const SubscriptionWidget({Key? key}) : super(key: key);

  @override
  _SubscriptionWidgetState createState() => _SubscriptionWidgetState();
}

class _SubscriptionWidgetState extends State<SubscriptionWidget> {
  late SubscriptionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubscriptionModel());
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
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Subscription',
            style: FlutterFlowTheme.of(context).displaySmall,
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: SvgPicture.asset(
                  'assets/images/bg.svg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'Annual plan                             \$24.56                          ',
                            'Monthly Plan                           \$14.56                       ',
                            'Per Day                                      \$4.56'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue = val),
                          width: 340.0,
                          height: 54.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).secondary,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                          hintText: 'Subscription Plans',
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 15.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).alternate,
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 0.0,
                          borderRadius: 40.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              20.0, 4.0, 20.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 20.0, 40.0, 0.0),
                        child: Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue1 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue1 = newValue!);
                            },
                            title: Text(
                              'Live Tracking',
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 10.0, 40.0, 0.0),
                        child: Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue2 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue2 = newValue!);
                            },
                            title: Text(
                              'I\'m Here',
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 10.0, 40.0, 0.0),
                        child: Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue3 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue3 = newValue!);
                            },
                            title: Text(
                              'Social',
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ),
                      Container(
                        width: 340.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options: [
                              'Bundle(All)                                                    '
                            ].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model.radioButtonValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 25.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Colors.black,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            selectedTextStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            buttonPosition: RadioButtonPosition.right,
                            direction: Axis.vertical,
                            radioButtonColor:
                                FlutterFlowTheme.of(context).primary,
                            inactiveRadioButtonColor:
                                FlutterFlowTheme.of(context).tertiary,
                            toggleable: true,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 1.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 100.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'PAY',
                              options: FFButtonOptions(
                                width: 335.0,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle:
                                    FlutterFlowTheme.of(context).headlineSmall,
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
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
      ),
    );
  }
}
