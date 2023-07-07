import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_label_model.dart';
export 'icon_label_model.dart';

class IconLabelWidget extends StatefulWidget {
  const IconLabelWidget({
    Key? key,
    this.iconData,
    this.iconLabel,
    this.onTap,
  }) : super(key: key);

  final Widget? iconData;
  final String? iconLabel;
  final Future<dynamic> Function()? onTap;

  @override
  _IconLabelWidgetState createState() => _IconLabelWidgetState();
}

class _IconLabelWidgetState extends State<IconLabelWidget> {
  late IconLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconLabelModel());
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
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
          child: widget.iconData!,
        ),
        Text(
          widget.iconLabel!,
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ],
    );
  }
}
