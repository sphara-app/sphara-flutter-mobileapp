import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sphara/feature/common/background_image.dart';
import 'package:sphara/utils/theme/theme.dart';

import '../../../constant/app_image.dart';
import '../../../constant/size.dart';
import '../../common/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BGImage(
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
                  "Login to continue",
                  style: FFTheme.of(context).titleMedium,
                ),
              ),
              const Spacer(flex: 1),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: FFTheme.of(context).bodyMedium.copyWith(
                          color: FFTheme.of(context).tertiary,
                          fontSize: 14.0,
                        ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      print('InkWell pressed ...');
                    },
                    child: Text(
                      ' Sign up',
                      style: FFTheme.of(context).bodyMedium.copyWith(
                            color: FFTheme.of(context).primary,
                            fontSize: 16,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
    );
  }
}
