import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'photo_adding_model.dart';
export 'photo_adding_model.dart';

class PhotoAddingWidget extends StatefulWidget {
  const PhotoAddingWidget({Key? key}) : super(key: key);

  @override
  _PhotoAddingWidgetState createState() => _PhotoAddingWidgetState();
}

class _PhotoAddingWidgetState extends State<PhotoAddingWidget> {
  late PhotoAddingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhotoAddingModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
          child: Container(
            width: double.infinity,
            height: 300.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Choose Photo or Video',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://picsum.photos/seed/814/600',
                          width: 75.0,
                          height: 75.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              'https://picsum.photos/seed/15/600',
                              width: 75.0,
                              height: 74.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, -0.05),
                            child: Icon(
                              Icons.videocam_outlined,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://picsum.photos/seed/84/600',
                          width: 75.0,
                          height: 75.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://picsum.photos/seed/46/600',
                          width: 75.0,
                          height: 75.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://picsum.photos/seed/813/605',
                          width: 75.0,
                          height: 75.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://picsum.photos/seed/5/600',
                          width: 75.0,
                          height: 75.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://picsum.photos/seed/56/600',
                          width: 75.0,
                          height: 75.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              'https://picsum.photos/seed/645/600',
                              width: 75.0,
                              height: 74.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, -0.05),
                            child: Icon(
                              Icons.videocam_outlined,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
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
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
          child: FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'CANCEL',
            options: FFButtonOptions(
              width: double.infinity,
              height: 54.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    color: Colors.white,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
              elevation: 2.0,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(40.0),
            ),
          ),
        ),
      ],
    );
  }
}
