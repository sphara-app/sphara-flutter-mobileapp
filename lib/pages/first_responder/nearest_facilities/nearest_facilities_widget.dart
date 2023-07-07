import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nearest_facilities_model.dart';
export 'nearest_facilities_model.dart';

class NearestFacilitiesWidget extends StatefulWidget {
  const NearestFacilitiesWidget({Key? key}) : super(key: key);

  @override
  _NearestFacilitiesWidgetState createState() =>
      _NearestFacilitiesWidgetState();
}

class _NearestFacilitiesWidgetState extends State<NearestFacilitiesWidget> {
  late NearestFacilitiesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NearestFacilitiesModel());
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Color(0xFFF99546),
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.safePop();
              },
              child: Icon(
                Icons.arrow_back_sharp,
                color: FlutterFlowTheme.of(context).secondary,
                size: 28.0,
              ),
            ),
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FFIcons.kmapMarkerRadiusOutline,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 24.0,
                      ),
                      Text(
                        'Your Location',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondary,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      'F.No-102,Pragathi nagar,Madhapur',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondary,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.search_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 28.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
            centerTitle: true,
            elevation: 1.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Column(
              children: [
                Align(
                  alignment: Alignment(0.0, 0),
                  child: TabBar(
                    labelColor: FlutterFlowTheme.of(context).primary,
                    unselectedLabelColor: FlutterFlowTheme.of(context).tertiary,
                    labelStyle: FlutterFlowTheme.of(context).titleSmall,
                    indicatorColor: FlutterFlowTheme.of(context).primary,
                    indicatorWeight: 3.0,
                    tabs: [
                      Tab(
                        text: 'Police',
                        icon: Icon(
                          FFIcons.kmaskGroup225,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 16.0,
                        ),
                      ),
                      Tab(
                        text: 'Medical',
                        icon: Icon(
                          FFIcons.kpolice,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 16.0,
                        ),
                      ),
                      Tab(
                        text: 'Fire Stations',
                        icon: Icon(
                          FFIcons.kmaskGroup224,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 0.0),
                                child: ListTile(
                                  title: Text(
                                    'Madhapur Police Station',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  subtitle: Text(
                                    'Traffic Junction, Near Kavuri Hills, Hitech City Rd,\nMadhapur, Hyderabad.',
                                    style:
                                        FlutterFlowTheme.of(context).bodySmall,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 20.0,
                                  ),
                                  dense: false,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 0.0),
                                child: ListTile(
                                  title: Text(
                                    'Madhapur Police Station',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  subtitle: Text(
                                    'Traffic Junction, Near Kavuri Hills, Hitech City Rd,\nMadhapur, Hyderabad.',
                                    style:
                                        FlutterFlowTheme.of(context).bodySmall,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 20.0,
                                  ),
                                  dense: false,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 0.0),
                                child: ListTile(
                                  title: Text(
                                    'Madhapur Police Station',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  subtitle: Text(
                                    'Traffic Junction, Near Kavuri Hills, Hitech City Rd,\nMadhapur, Hyderabad.',
                                    style:
                                        FlutterFlowTheme.of(context).bodySmall,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 20.0,
                                  ),
                                  dense: false,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                            children: [],
                          ),
                        ],
                      ),
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
                            children: [],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
