import '/components/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MakedonationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  FormFieldController<List<String>>? choiceChipsValueController;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    navbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
