import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'responder_nav_bar_model.dart';
export 'responder_nav_bar_model.dart';

class ResponderNavBarWidget extends StatefulWidget {
  const ResponderNavBarWidget({
    Key? key,
    this.navItem,
  }) : super(key: key);

  final List<String>? navItem;

  @override
  _ResponderNavBarWidgetState createState() => _ResponderNavBarWidgetState();
}

class _ResponderNavBarWidgetState extends State<ResponderNavBarWidget> {
  late ResponderNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResponderNavBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 2.0,
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
        ),
        child: Builder(
          builder: (context) {
            final navBar = widget.navItem?.toList() ?? [];
            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(navBar.length, (navBarIndex) {
                final navBarItem = navBar[navBarIndex];
                return Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          if (navBarItem == (widget.navItem?[0]))
                            Icon(
                              Icons.home,
                              color:
                                  navBarItem == FFAppState().responderActiveItem
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                          if (navBarItem == (widget.navItem?[1]))
                            Icon(
                              FFIcons.kimHereOrange,
                              color:
                                  navBarItem == FFAppState().responderActiveItem
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                          if (navBarItem == (widget.navItem?[2]))
                            Icon(
                              FFIcons.ktimerOrange,
                              color:
                                  navBarItem == FFAppState().responderActiveItem
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                          if (navBarItem == (widget.navItem?[3]))
                            Icon(
                              FFIcons.ksocialMedia,
                              color:
                                  navBarItem == FFAppState().responderActiveItem
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                        ],
                      ),
                      Text(
                        navBarItem,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color:
                                  navBarItem == FFAppState().responderActiveItem
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).tertiary,
                              fontSize: 14.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ],
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
