import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alert_detail_model.dart';
export 'alert_detail_model.dart';

class AlertDetailWidget extends StatefulWidget {
  const AlertDetailWidget({Key? key}) : super(key: key);

  @override
  _AlertDetailWidgetState createState() => _AlertDetailWidgetState();
}

class _AlertDetailWidgetState extends State<AlertDetailWidget>
    with TickerProviderStateMixin {
  late AlertDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertDetailModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
              context.pushNamed(
                'Alerts',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            },
          ),
          title: Text(
            '11-08-2020',
            style: FlutterFlowTheme.of(context).displaySmall,
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: FlutterFlowTheme.of(context).primary,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).tertiary,
                            labelStyle: FlutterFlowTheme.of(context).titleSmall,
                            unselectedLabelStyle: TextStyle(),
                            indicatorColor: Color(0xFFF99546),
                            indicatorWeight: 3.0,
                            tabs: [
                              Tab(
                                text: 'Detail',
                              ),
                              Tab(
                                text: 'Chat',
                              ),
                            ],
                            controller: _model.tabBarController,
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 0.0, 0.0),
                                      child: SelectionArea(
                                          child: Text(
                                        'Alert detail',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium,
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 30.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'Date :',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              '11-08-2020',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -0.95, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'Time :',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              '12:40 pm',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'Emergency call # :',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'Harassment',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'Location :',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'Phase 2, opp: oracle,\nPlot No: 25, 16A, Hitech\nCity Rd, Phase 2,\nMadhapur, Hyderabad',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'Status report :',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'Successfully Resolved',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 40.0, 0.0, 0.0),
                                    child: Container(
                                      width: 335.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 4.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Icon(
                                              FFIcons.kmaskGroup57,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 34.0,
                                            ),
                                          ),
                                          SelectionArea(
                                              child: Text(
                                            'New Alert!',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          )),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              'SPHARA!!! I\'m being followed. I\'m\nscared. Send help!',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color: Colors.black,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 20.0, 0.0),
                                      child: Container(
                                        width: 240.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: SelectionArea(
                                            child: Text(
                                          'He is near, please come quckly',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Colors.white,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 20.0, 0.0),
                                      child: SelectionArea(
                                          child: Text(
                                        '18:22PM',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmallFamily,
                                              fontSize: 14.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                      )),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 30.0, 0.0, 0.0),
                                      child: Container(
                                        width: 240.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF3F4040),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: SelectionArea(
                                            child: Text(
                                          'Stay hidden..I\'m coming',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Colors.white,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
