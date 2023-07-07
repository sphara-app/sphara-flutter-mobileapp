import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adding_new_admin_model.dart';
export 'adding_new_admin_model.dart';

class AddingNewAdminWidget extends StatefulWidget {
  const AddingNewAdminWidget({Key? key}) : super(key: key);

  @override
  _AddingNewAdminWidgetState createState() => _AddingNewAdminWidgetState();
}

class _AddingNewAdminWidgetState extends State<AddingNewAdminWidget> {
  late AddingNewAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddingNewAdminModel());

    _model.textController ??= TextEditingController();
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
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
          title: Text(
            'Add New Admin',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).displaySmallFamily,
                  color: FlutterFlowTheme.of(context).primary,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).displaySmallFamily),
                ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: Text(
                  'ADD',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Search for people',
                        hintStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context).tertiary,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        prefixIcon: Icon(
                          Icons.search,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 18.0,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondary,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/download_(1).jfif',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue1 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue1 = newValue!);
                                  },
                                  title: Text(
                                    'Kathy Payne',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/photo-1438761681033-6461ffad8d80.jfif',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue2 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue2 = newValue!);
                                  },
                                  title: Text(
                                    'Frances Hawkins',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/images.jfif',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue3 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue3 = newValue!);
                                  },
                                  title: Text(
                                    'dsjbjsjd',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/images_(1).jfif',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue4 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue4 = newValue!);
                                  },
                                  title: Text(
                                    'Kathy Payne',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/download.jfif',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue5 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue5 = newValue!);
                                  },
                                  title: Text(
                                    'Kathy Payne',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/images_(5).jfif',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue6 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue6 = newValue!);
                                  },
                                  title: Text(
                                    'sdfsdgh',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/download_(1).jfif',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue7 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue7 = newValue!);
                                  },
                                  title: Text(
                                    'Kathy Payne',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/images_(4).jfif',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue8 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue8 = newValue!);
                                  },
                                  title: Text(
                                    'Kathy Payne',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/download_(2).jfif',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue9 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue9 = newValue!);
                                  },
                                  title: Text(
                                    'etrdt',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 45.0,
                                height: 45.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/download.png',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                                child: CheckboxListTile(
                                  value: _model.checkboxListTileValue10 ??=
                                      false,
                                  onChanged: (newValue) async {
                                    setState(() => _model
                                        .checkboxListTileValue10 = newValue!);
                                  },
                                  title: Text(
                                    'Kathy Payne',
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
