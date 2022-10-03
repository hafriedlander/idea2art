import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/constants.dart';
import 'package:idea2art/src/providers.dart';
import 'package:idea2art/src/widgets/logo_text.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final r = Random();
    final logo = "logo${(r.nextInt(16) + 1).toString().padLeft(2, "0")}.png";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: ([
        Image(image: AssetImage('assets/logos/$logo')),
        LogoText(style: Theme.of(context).textTheme.headline1!),
        const CircularProgressIndicator(value: null),
      ])
          .map<Widget>((w) => Padding(
                padding: const EdgeInsets.all(10),
                child: w,
              ))
          .toList(),
    );
  }
}

class SplashPanel extends HookConsumerWidget {
  const SplashPanel({
    super.key,
    required this.theme,
    required this.onReady,
  });

  final ThemeData theme;
  final void Function(String) onReady;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(generateServiceProvider, (_, server) {
      if (server.hasValue) {
        onReady("/");
      } else if (server.hasError) {
        onReady("/server");
      }
    });

    return MaterialApp(
      title: APPNAME,
      theme: theme,
      home: const Scaffold(
        body: Center(child: SplashLogo()),
      ),
    );
  }
}
