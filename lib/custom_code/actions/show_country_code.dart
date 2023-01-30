// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:country_picker/country_picker.dart';

Future showCountryCode(BuildContext context) async {
  var outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: FlutterFlowTheme.of(context).primaryColor,
    ),
  );
  showCountryPicker(
    context: context,
    //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
    favorite: <String>['US', 'IN'],

    //Optional. Shows phone code before the country name.
    showPhoneCode: true,

    onSelect: (Country country) {
      print('Select country: ${country.displayName}');
      FFAppState().update(() {
        FFAppState().countryCode = country.phoneCode;
      });
    },
    // Optional. Sets the theme for the country list picker.
    countryListTheme: CountryListThemeData(
      // Optional. Sets the border radius for the bottomsheet.
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      textStyle: TextStyle(
        color: FlutterFlowTheme.of(context).secondaryColor,
      ),
      bottomSheetHeight: context.size!.height * 0.85,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
      // Optional. Styles the search field.
      inputDecoration: InputDecoration(
        labelText: 'Search',
        labelStyle: TextStyle(
          color: FlutterFlowTheme.of(context).secondaryColor,
        ),
        hintText: 'Start typing to search',
        hintStyle: TextStyle(
          color: FlutterFlowTheme.of(context).secondaryColor.withOpacity(0.5),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: FlutterFlowTheme.of(context).secondaryColor,
        ),
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),

      // Optional. Styles the text in the search field
      searchTextStyle: TextStyle(
        color: FlutterFlowTheme.of(context).primaryColor,
        fontSize: 18,
      ),
    ),
  );
}
