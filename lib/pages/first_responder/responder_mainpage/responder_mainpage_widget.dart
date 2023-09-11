import '/components/menu_new/menu_new_widget.dart';
import '/components/responder_nav_bar/responder_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'responder_mainpage_model.dart';
export 'responder_mainpage_model.dart';

class ResponderMainpageWidget extends StatefulWidget {
  const ResponderMainpageWidget({Key? key}) : super(key: key);

  @override
  _ResponderMainpageWidgetState createState() =>
      _ResponderMainpageWidgetState();
}

class _ResponderMainpageWidgetState extends State<ResponderMainpageWidget> {
  late ResponderMainpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResponderMainpageModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.menuNewModel,
            updateCallback: () => setState(() {}),
            child: MenuNewWidget(),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: true,
            title: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SPHARA',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).secondary,
                        fontSize: 22.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineMediumFamily),
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FFIcons.kmapMarkerRadiusOutline,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 24.0,
                    ),
                    Text(
                      'Pragathi Nagar, Madhapur',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondary,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              ],
            ),
            actions: [],
            centerTitle: true,
            toolbarHeight: 444.0,
            elevation: 4.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: custom_widgets.CstmFlutterMap(
                              width: double.infinity,
                              height: double.infinity,
                              zoom: 15.0,
                              latLag: currentUserLocationValue!,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 1.00),
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                              ),
                              alignment: AlignmentDirectional(0.00, -0.05),
                              child: Text(
                                'There are currently no emergencies close to you',
                                style: FlutterFlowTheme.of(context).titleSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: wrapWithModel(
                  model: _model.responderNavBarModel,
                  updateCallback: () => setState(() {}),
                  child: ResponderNavBarWidget(
                    navItem: FFAppState().responderMenu,
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
