import '/backend/api_requests/api_calls.dart';
import '/components/personal_informartion_start/personal_informartion_start_widget.dart';
import '/components/show_id_when_complete/show_id_when_complete_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalinfoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (all country api)] action in personalinfo widget.
  ApiCallResponse? apiResulth76;
  // State field(s) for FullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  String? _fullNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for NickName widget.
  TextEditingController? nickNameController;
  String? Function(BuildContext, String?)? nickNameControllerValidator;
  DateTime? datePicked;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for ResidentalAddress widget.
  TextEditingController? residentalAddressController;
  String? Function(BuildContext, String?)? residentalAddressControllerValidator;
  String? _residentalAddressControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for StateCity widget.
  TextEditingController? stateCityController;
  String? Function(BuildContext, String?)? stateCityControllerValidator;
  String? _stateCityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ZipCode widget.
  TextEditingController? zipCodeController;
  String? Function(BuildContext, String?)? zipCodeControllerValidator;
  String? _zipCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[0-9]{0,8}\$').hasMatch(val)) {
      return 'Not valid regex';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fullNameControllerValidator = _fullNameControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    residentalAddressControllerValidator =
        _residentalAddressControllerValidator;
    stateCityControllerValidator = _stateCityControllerValidator;
    zipCodeControllerValidator = _zipCodeControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    fullNameController?.dispose();
    nickNameController?.dispose();
    emailController?.dispose();
    residentalAddressController?.dispose();
    stateCityController?.dispose();
    zipCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
