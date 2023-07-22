import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sphara/utils/router/app_state_notifier.dart';

class SetMultiProvider extends StatelessWidget {
  const SetMultiProvider({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppStateNotifier.instance,
        )
      ],
      child: child,
    );
  }
}