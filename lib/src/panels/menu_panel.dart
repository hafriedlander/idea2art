import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenerateMenu extends StatelessWidget {
  const GenerateMenu({super.key});

  @override
  Widget build(BuildContext context) => Container(
      width: 100,
      child: ListView(
        children: [
          TextButton(
            child: Text("Generate"),
            onPressed: () => Navigator.pushNamed(context, "/generate"),
          ),
          TextButton(
            child: Text("Server"),
            onPressed: () => Navigator.pushNamed(context, "/server"),
          ),
        ],
      ));
}
