import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'social_nav_bar_model.dart';
export 'social_nav_bar_model.dart';

class SocialNavBarWidget extends StatefulWidget {
  const SocialNavBarWidget({
    Key? key,
    this.nav,
  }) : super(key: key);

  final List<String>? nav;

  @override
  _SocialNavBarWidgetState createState() => _SocialNavBarWidgetState();
}

class _SocialNavBarWidgetState extends State<SocialNavBarWidget> {
  late SocialNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialNavBarModel());
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
            final navBar = widget.nav?.toList() ?? [];
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
                          if (navBarItem == widget.nav?[0])
                            FaIcon(
                              FontAwesomeIcons.hashtag,
                              color: navBarItem == FFAppState().SocialActiveItem
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                          if (navBarItem == widget.nav?[1])
                            Icon(
                              FFIcons.kchatSettings,
                              color: navBarItem == FFAppState().SocialActiveItem
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                          if (navBarItem == widget.nav?[2])
                            FaIcon(
                              FontAwesomeIcons.calendarPlus,
                              color: navBarItem == FFAppState().SocialActiveItem
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).tertiary,
                              size: 24.0,
                            ),
                          if (navBarItem == widget.nav?[3])
                            Icon(
                              Icons.keyboard_control,
                              color: navBarItem == FFAppState().SocialActiveItem
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
                              color: navBarItem == FFAppState().SocialActiveItem
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
