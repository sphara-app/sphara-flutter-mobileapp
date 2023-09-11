import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'civilian_nav_bar_model.dart';
export 'civilian_nav_bar_model.dart';

class CivilianNavBarWidget extends StatefulWidget {
  const CivilianNavBarWidget({
    Key? key,
    this.menuItem,
  }) : super(key: key);

  final List<String>? menuItem;

  @override
  _CivilianNavBarWidgetState createState() => _CivilianNavBarWidgetState();
}

class _CivilianNavBarWidgetState extends State<CivilianNavBarWidget> {
  late CivilianNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CivilianNavBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
        child: Material(
          color: Colors.transparent,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Container(
            width: double.infinity,
            height: 70.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 2.0),
                )
              ],
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Builder(
              builder: (context) {
                final menu = widget.menuItem?.toList() ?? [];
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(menu.length, (menuIndex) {
                    final menuItem = menu[menuIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if ((menuItem == (widget.menuItem?[0])) &&
                              (FFAppState().civilianActiveItem !=
                                  (widget.menuItem?[0]))) {
                            context.goNamed(
                              'Homepage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          } else {
                            if ((menuItem == (widget.menuItem?[1])) &&
                                (FFAppState().civilianActiveItem !=
                                    (widget.menuItem?[1]))) {
                              context.goNamed(
                                'livetrack',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            } else {
                              if ((menuItem == (widget.menuItem?[2])) &&
                                  (FFAppState().civilianActiveItem !=
                                      (widget.menuItem?[2]))) {
                                context.goNamed(
                                  'Timer',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              } else {
                                if ((menuItem == (widget.menuItem?[3])) &&
                                    (FFAppState().civilianActiveItem !=
                                        (widget.menuItem?[3]))) {
                                  context.goNamed(
                                    'SocialChat',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  // social active
                                  setState(() {
                                    FFAppState().socialMode = true;
                                  });
                                }
                              }
                            }
                          }

                          FFAppState().update(() {
                            FFAppState().civilianActiveItem = menuItem;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                if (menuItem == (widget.menuItem?[0]))
                                  Icon(
                                    Icons.home,
                                    color: menuItem ==
                                            FFAppState().civilianActiveItem
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).tertiary,
                                    size: 24.0,
                                  ),
                                if (menuItem == (widget.menuItem?[1]))
                                  Icon(
                                    FFIcons.kimHereOrange,
                                    color: menuItem ==
                                            FFAppState().civilianActiveItem
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).tertiary,
                                    size: 24.0,
                                  ),
                                if (menuItem == (widget.menuItem?[2]))
                                  Icon(
                                    FFIcons.ktimerGrey,
                                    color: menuItem ==
                                            FFAppState().civilianActiveItem
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).tertiary,
                                    size: 24.0,
                                  ),
                                if (menuItem == (widget.menuItem?[3]))
                                  Image.asset(
                                    'assets/images/Social.png',
                                    fit: BoxFit.cover,
                                  ),
                              ],
                            ),
                            Text(
                              menuItem,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: menuItem ==
                                            FFAppState().civilianActiveItem
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context).tertiary,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
