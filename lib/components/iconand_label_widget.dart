import '/components/iconand_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'iconand_label_model.dart';
export 'iconand_label_model.dart';

class IconandLabelWidget extends StatefulWidget {
  const IconandLabelWidget({
    Key? key,
    this.chatlist,
  }) : super(key: key);

  final List<String>? chatlist;

  @override
  _IconandLabelWidgetState createState() => _IconandLabelWidgetState();
}

class _IconandLabelWidgetState extends State<IconandLabelWidget> {
  late IconandLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconandLabelModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        wrapWithModel(
          model: _model.iconandTextModel,
          updateCallback: () => setState(() {}),
          child: IconandTextWidget(),
        ),
      ],
    );
  }
}
