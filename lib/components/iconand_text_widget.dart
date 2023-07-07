import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'iconand_text_model.dart';
export 'iconand_text_model.dart';

class IconandTextWidget extends StatefulWidget {
  const IconandTextWidget({Key? key}) : super(key: key);

  @override
  _IconandTextWidgetState createState() => _IconandTextWidgetState();
}

class _IconandTextWidgetState extends State<IconandTextWidget> {
  late IconandTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconandTextModel());
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
      children: [
        Icon(
          Icons.settings_outlined,
          color: Colors.black,
          size: 24.0,
        ),
        Text(
          'Hello World',
          style: FlutterFlowTheme.of(context).bodyMedium,
        ),
      ],
    );
  }
}
