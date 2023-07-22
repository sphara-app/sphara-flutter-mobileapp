import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sphara/utils/set_multi_provider.dart';
import 'package:sphara/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'utils/router/app_state_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FFTheme.initialize();

  runApp(const SetMultiProvider(
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeMode _themeMode = FFTheme.themeMode;
  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    // userStream = spharaFirebaseUserStream()
    //   ..listen((user) => _appStateNotifier.update(user));
    // jwtTokenStream.listen((_) {});
    // Future.delayed(
    //   Duration(seconds: 1),
    //   () => _appStateNotifier.stopShowingSplashImage(),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Sphara',
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}
