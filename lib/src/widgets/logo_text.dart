import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key, required this.style});

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          TextSpan(
            text: "IDEA",
            style: style.copyWith(color: Colors.white),
          ),
          TextSpan(
            text: "2.",
            style: style.copyWith(color: Colors.grey),
          ),
          TextSpan(
            text: "ART",
            style: style.copyWith(color: Colors.lightGreen),
          ),
        ],
      ),
    );
  }
}
