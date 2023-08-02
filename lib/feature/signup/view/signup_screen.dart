import 'package:country_picker/country_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sphara/feature/common/background_image.dart';
import 'package:sphara/utils/theme/theme.dart';

import '../../../constant/app_image.dart';
import '../../../constant/app_shared_pref.dart';
import '../../../constant/size.dart';
import '../../../utils/router/routes.dart';
import '../../common/button_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required this.isFromCivilian});
  final bool isFromCivilian;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final unfocusNode = FocusNode();
  String countryCode = "1";

  @override
  void initState() {
    setCountryCode();
    super.initState();
  }

  setCountryCode() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      countryCode = preferences.getString(SPref.countryPhoneCode) ?? "1";
    });
  }

  @override
  Widget build(BuildContext context) {
    const underlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0x00000000),
        width: 1.0,
      ),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0.0),
        bottomRight: Radius.circular(30.0),
        topLeft: Radius.circular(0.0),
        topRight: Radius.circular(30.0),
      ),
    );
    return Scaffold(
      body: BGImage(
        node: unfocusNode,
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: s20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: FFTheme.of(context).primary,
                    ),
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  AppImage.logo_dark_svg,
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    widget.isFromCivilian ? "Sign Up" : "Welcome to Sphara",
                    style: FFTheme.of(context).titleMedium,
                  ),
                ),
                // const Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    widget.isFromCivilian
                        ? 'Provide your phone number. So we can be\nable to send your confirmation code.'
                        : 'Provide your work phone number which you were enrolled at your work. so we can be able to send you confirmation as well as authentication code',
                    textAlign: TextAlign.center,
                    style: FFTheme.of(context).bodyMedium.copyWith(
                          fontFamily: 'Roboto',
                          color: FFTheme.of(context).tertiary,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  // width: 335.0,
                  height: 54.0,
                  decoration: BoxDecoration(
                    color: const Color(0x87555555),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 10.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            var outlineInputBorder = OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FFTheme.of(context).primary,
                              ),
                            );
                            countryCodePicker(context, outlineInputBorder);
                          },
                          child: Container(
                            width: 80.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FFTheme.of(context).primaryBackground,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '+$countryCode',
                                  style: FFTheme.of(context)
                                      .bodyMedium
                                      .copyWith(
                                        fontFamily: FFTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FFTheme.of(context).secondary,
                                      ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: FFTheme.of(context).secondary,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: phoneNumberController,
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            hintStyle: FFTheme.of(context).bodySmall.copyWith(
                                  color: const Color(0xFF707070),
                                  fontSize: 14.0,
                                ),
                            enabledBorder: underlineInputBorder,
                            focusedBorder: underlineInputBorder,
                            errorBorder: underlineInputBorder,
                            focusedErrorBorder: underlineInputBorder,
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                          ),
                          style: FFTheme.of(context).bodyMedium.copyWith(
                                fontFamily: 'Roboto',
                                color: FFTheme.of(context).tertiary,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                          keyboardType: TextInputType.number,
                          // validator: _model.textControllerValidator
                          //     .asValidator(context),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 20.0, 0.0, 40.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          'By continuing, you are indicating that you agree to \nthe ',
                      style: FFTheme.of(context).bodySmall.copyWith(
                            fontFamily: FFTheme.of(context).bodySmallFamily,
                            color: FFTheme.of(context).tertiary,
                            fontSize: 14.0,
                          ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policies',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // context.pushNamed(Routes.privacyPolicy);
                              print("Privacy Policies");
                            },
                          style: FFTheme.of(context).bodySmall.copyWith(
                                fontFamily: FFTheme.of(context).bodySmallFamily,
                                color: Colors.white,
                                fontSize: 14.0,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: FFTheme.of(context).bodySmall.copyWith(
                                fontFamily: FFTheme.of(context).bodySmallFamily,
                                color: FFTheme.of(context).tertiary,
                                fontSize: 14.0,
                              ),
                        ),
                        TextSpan(
                          text: 'Terms',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // context.pushNamed(Routes.terms);
                              print("Terms");
                            },
                          style: FFTheme.of(context).bodySmall.copyWith(
                                fontFamily: FFTheme.of(context).bodySmallFamily,
                                color: Colors.white,
                                fontSize: 14.0,
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 20.0, 0.0, 40.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: FFTheme.of(context).bodyMedium.copyWith(
                            color: FFTheme.of(context).tertiary,
                            fontSize: 14.0,
                          ),
                      children: [
                        TextSpan(
                          text: 'Log in',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.pushReplacementNamed(Routes.login,
                                  queryParameters: {
                                    "isCivilian":
                                        widget.isFromCivilian.toString(),
                                  });
                            },
                          style: FFTheme.of(context).bodyMedium.copyWith(
                                color: FFTheme.of(context).primary,
                                fontSize: 16,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       'Already have an account?',
                //       style: FFTheme.of(context).bodyMedium.copyWith(
                //             color: FFTheme.of(context).tertiary,
                //             fontSize: 14.0,
                //           ),
                //     ),
                //     InkWell(
                //       splashColor: Colors.transparent,
                //       focusColor: Colors.transparent,
                //       hoverColor: Colors.transparent,
                //       highlightColor: Colors.transparent,
                //       onTap: () async {
                //         context.pushReplacementNamed(Routes.login,
                //             queryParameters: {
                //               "isCivilian": widget.isFromCivilian.toString(),
                //             });
                //       },
                //       child: Text(
                //         ' Log in',
                //         style: FFTheme.of(context).bodyMedium.copyWith(
                //               color: FFTheme.of(context).primary,
                //               fontSize: 16,
                //             ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 20),
                const Spacer(flex: 1),

                CustomOutlinedButton(
                  onPressed: () {
                    context.pushNamed(Routes.verificationCode);
                  },
                  isExpanded: true,
                  backgroundColor: FFTheme.of(context).primary,
                  child: Text(
                    "Continue".toUpperCase(),
                    style: FFTheme.of(context).titleMedium,
                  ),
                ),
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void countryCodePicker(
      BuildContext context, OutlineInputBorder outlineInputBorder) {
    return showCountryPicker(
      context: context,
      //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
      favorite: <String>['US', 'IN'],

      //Optional. Shows phone code before the country name.
      showPhoneCode: true,

      onSelect: (Country country) async {
        print('Select country: ${country.displayName}');
        // FFAppState().update(() {
        //   FFAppState().countryCode = country.phoneCode;
        // });
        final SharedPreferences preferences =
            await SharedPreferences.getInstance();
        await preferences.setString(SPref.countryPhoneCode, country.phoneCode);
        setState(() {
          countryCode = country.phoneCode;
        });
      },
      // Optional. Sets the theme for the country list picker.
      countryListTheme: CountryListThemeData(
        // Optional. Sets the border radius for the bottomsheet.
        backgroundColor: FFTheme.of(context).primaryBackground,
        textStyle: TextStyle(
          color: FFTheme.of(context).secondary,
        ),
        bottomSheetHeight: context.size!.height * 0.85,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        // Optional. Styles the search field.
        inputDecoration: InputDecoration(
          labelText: 'Search',
          labelStyle: TextStyle(
            color: FFTheme.of(context).secondary,
          ),
          hintText: 'Start typing to search',
          hintStyle: TextStyle(
            color: FFTheme.of(context).secondary.withOpacity(0.5),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: FFTheme.of(context).secondary,
          ),
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
        ),

        // Optional. Styles the text in the search field
        searchTextStyle: TextStyle(
          color: FFTheme.of(context).primary,
          fontSize: 18,
        ),
      ),
    );
  }
}
