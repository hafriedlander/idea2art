import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:idea2art/src/providers.dart';

FocusNode useFocusCallback(
    TextEditingController controller, void Function(String val) callback) {
  final focusNode = useFocusNode();

  bool currentFocus = false;
  String initialText = "";

  focusNode.addListener(() {
    if (focusNode.hasFocus) {
      currentFocus = true;
      initialText = controller.text;
    } else {
      final String newText = controller.text;
      if (currentFocus && initialText != newText) callback(newText);
      currentFocus = false;
      initialText = "";
    }
  });

  return focusNode;
}
