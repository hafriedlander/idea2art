import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:idea2art/src/panels/generate_panel.dart';
import 'package:idea2art/src/panels/menu_panel.dart';
import 'package:idea2art/src/panels/server_panel.dart';
import 'package:idea2art/src/panels/settings_panel.dart';
import 'package:idea2art/src/panels/splash_panel.dart';
import 'package:idea2art/src/providers.dart';
import 'package:idea2art/src/constants.dart';
import 'package:idea2art/src/utils.dart';
import 'package:idea2art/src/widgets/logo_text.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  ThemeData _buildTheme() {
    var baseTheme = ThemeData(
      primarySwatch: Colors.lightGreen,
      brightness: Brightness.dark,
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.barlowTextTheme(baseTheme.textTheme),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initalRoute = useState("");

    if (initalRoute.value != "") {
      return PrimaryInterface(
          theme: _buildTheme(), initialRoute: initalRoute.value);
    } else {
      return SplashPanel(
          theme: _buildTheme(),
          onReady: (initialRoute) => initalRoute.value = initialRoute);
    }
  }
}

class PrimaryInterface extends StatelessWidget {
  const PrimaryInterface({
    super.key,
    required this.theme,
    required this.initialRoute,
  });

  final ThemeData theme;
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APPNAME,
      theme: theme,
      initialRoute: initialRoute,
      routes: {
        "/": (BuildContext context) => Scaffold(
              appBar: AppBar(
                title: LogoText(style: Theme.of(context).textTheme.headline4!),
              ),
              body: const Center(
                child: GeneratePage(),
              ),
            ),
        "/server": (BuildContext context) => Scaffold(
              appBar: AppBar(
                title: const Text(APPNAME),
              ),
              body: Center(
                child: ServerPanel(),
              ),
            )
      },
    );
  }
}

class GeneratePage extends StatelessWidget {
  const GeneratePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.fromLTRB(100, 0, 300, 0),
        child: const GeneratePrimaryPanel(),
      ),
      Container(
        width: 100,
        alignment: Alignment.topLeft,
        child: const GenerateMenu(),
      ),
      Container(
          alignment: Alignment.topRight,
          child: Container(
            width: 300,
            child: ListView(children: [const GenerateSettingsPanel()]),
          )),
    ]);
  }
}
