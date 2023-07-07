import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccessPermisionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for locationCheckBox widget.
  bool? locationCheckBoxValue;
  // State field(s) for phoneCheckBox widget.
  bool? phoneCheckBoxValue;
  // State field(s) for contactCheckBox widget.
  bool? contactCheckBoxValue;
  // State field(s) for smsCheckBox widget.
  bool? smsCheckBoxValue;
  // State field(s) for storageCheckBox widget.
  bool? storageCheckBoxValue;
  // State field(s) for cameraCheckBox widget.
  bool? cameraCheckBoxValue;
  // State field(s) for microphoneCheckBox widget.
  bool? microphoneCheckBoxValue;
  // State field(s) for appSettingCheckBox widget.
  bool? appSettingCheckBoxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
