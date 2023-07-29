import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.isExpanded = false,
    this.backgroundColor,
    this.side,
  });
  final Widget child;
  final VoidCallback onPressed;
  final bool isExpanded;
  final Color? backgroundColor;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? SizedBox(
            width: double.infinity,
            child: _button(context),
          )
        : _button(context);
  }

  OutlinedButton _button(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        side: side,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
