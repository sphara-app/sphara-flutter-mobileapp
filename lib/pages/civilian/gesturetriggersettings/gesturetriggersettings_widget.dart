import '/components/horizontal_shake/horizontal_shake_widget.dart';
import '/components/vertical_shake/vertical_shake_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gesturetriggersettings_model.dart';
export 'gesturetriggersettings_model.dart';

class GesturetriggersettingsWidget extends StatefulWidget {
  const GesturetriggersettingsWidget({Key? key}) : super(key: key);

  @override
  _GesturetriggersettingsWidgetState createState() =>
      _GesturetriggersettingsWidgetState();
}

class _GesturetriggersettingsWidgetState
    extends State<GesturetriggersettingsWidget> {
  late GesturetriggersettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GesturetriggersettingsModel());
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
                alignment: AlignmentDirectional(0.0, 0.0),
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
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Gesture Trigger Settings',
                          style: FlutterFlowTheme.of(context).titleMedium,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 5.0, 20.0, 0.0),
                        child: Text(
                          'SPHARA app will allows you to shake your phone in order to trigger emergency services,even if your screen is off, you can still shake it, and it\'ll work! ',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                      child: SwitchListTile(
                        value: _model.switchListTileValue1 ??= false,
                        onChanged: (newValue) async {
                          setState(
                              () => _model.switchListTileValue1 = newValue!);
                          if (newValue!) {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: Container(
                                      height: 400.0,
                                      child: VerticalShakeWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          }
                        },
                        title: Text(
                          'Vertical Shake',
                          style: FlutterFlowTheme.of(context).headlineSmall,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        activeTrackColor: FlutterFlowTheme.of(context).tertiary,
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                      child: SwitchListTile(
                        value: _model.switchListTileValue2 ??= false,
                        onChanged: (newValue) async {
                          setState(
                              () => _model.switchListTileValue2 = newValue!);
                          if (newValue!) {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: Container(
                                      height: 400.0,
                                      child: HorizontalShakeWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          }
                        },
                        title: Text(
                          'Horizontal Shake',
                          style: FlutterFlowTheme.of(context).headlineSmall,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        activeTrackColor: FlutterFlowTheme.of(context).tertiary,
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
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
