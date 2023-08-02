import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../constant/app_image.dart';
import '../../../constant/size.dart';
import '../../../utils/theme/theme.dart';
import '../../common/background_image.dart';
import '../../common/button_widget.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController verificationTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final unfocusNode = FocusNode();
  String countryCode = "1";

  @override
  void initState() {
    super.initState();
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
                    "Enter Verification Code",
                    style: FFTheme.of(context).titleMedium,
                  ),
                ),
                // const Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "We have sent you an SMS with a code to the number that you provided.",
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
                  child: Expanded(
                    child: TextFormField(
                      controller: verificationTextController,
                      maxLength: 6,

                      decoration: InputDecoration(
                        counterText: null,
                        hintText: '6-Digit Code',
                        hintStyle: FFTheme.of(context).bodySmall.copyWith(
                              color: const Color(0xFF707070),
                              fontSize: 14.0,
                            ),
                        // hintMaxLines: 20,
                        enabledBorder: underlineInputBorder,
                        focusedBorder: underlineInputBorder,
                        errorBorder: underlineInputBorder,
                        focusedErrorBorder: underlineInputBorder,
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 0.0, 0.0),
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
                ),

                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 20.0, 0.0, 40.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Can\'t receive code? ',
                      style: FFTheme.of(context).bodyMedium.copyWith(
                            color: FFTheme.of(context).tertiary,
                            fontSize: 14.0,
                          ),
                      children: [
                        TextSpan(
                          text: 'Resend OTP',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // context.pushNamed(Routes.privacyPolicy);
                              print("Privacy Policies");
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

                // const SizedBox(height: 20),
                const Spacer(flex: 1),

                CustomOutlinedButton(
                  onPressed: () {},
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
}
