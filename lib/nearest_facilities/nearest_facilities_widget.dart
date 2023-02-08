import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NearestFacilitiesWidget extends StatefulWidget {
  const NearestFacilitiesWidget({Key? key}) : super(key: key);

  @override
  _NearestFacilitiesWidgetState createState() =>
      _NearestFacilitiesWidgetState();
}

class _NearestFacilitiesWidgetState extends State<NearestFacilitiesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Color(0xFFF99546),
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.arrow_back_sharp,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 24,
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
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
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      size: 24,
                    ),
                    Text(
                      'Your Location',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Text(
                    'F.No-102,Pragathi nagar,Madhapur',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.search_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
          centerTitle: true,
          elevation: 1,
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.of(context).primaryColor,
                unselectedLabelColor:
                    FlutterFlowTheme.of(context).tertiaryColor,
                labelStyle: FlutterFlowTheme.of(context).subtitle2,
                indicatorColor: FlutterFlowTheme.of(context).primaryColor,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    text: 'Police',
                    icon: Icon(
                      FFIcons.kmaskGroup226,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 16,
                    ),
                  ),
                  Tab(
                    text: 'Medical',
                    icon: Icon(
                      FFIcons.kmaskGroup225,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 16,
                    ),
                  ),
                  Tab(
                    text: 'Fire Stations',
                    icon: Icon(
                      FFIcons.kmaskGroup224,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 16,
                    ),
                  ),
                ],
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: ListTile(
                                title: Text(
                                  'Madhapur Police Station',
                                  style: FlutterFlowTheme.of(context).subtitle2,
                                ),
                                subtitle: Text(
                                  'Traffic Junction, Near Kavuri Hills, Hitech City Rd,\nMadhapur, Hyderabad',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 20,
                                ),
                                dense: false,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: ListTile(
                                title: Text(
                                  'Madhapur Police Station',
                                  style: FlutterFlowTheme.of(context).subtitle2,
                                ),
                                subtitle: Text(
                                  'Traffic Junction, Near Kavuri Hills, Hitech City Rd,\nMadhapur, Hyderabad',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 20,
                                ),
                                dense: false,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: ListTile(
                                title: Text(
                                  'Madhapur Police Station',
                                  style: FlutterFlowTheme.of(context).subtitle2,
                                ),
                                subtitle: Text(
                                  'Traffic Junction, Near Kavuri Hills, Hitech City Rd,\nMadhapur, Hyderabad',
                                  style: FlutterFlowTheme.of(context).bodyText2,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  size: 20,
                                ),
                                dense: false,
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
    );
  }
}
