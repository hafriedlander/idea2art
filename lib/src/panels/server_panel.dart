import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:idea2art/src/providers.dart';
import 'package:idea2art/src/services/generate.dart';
import 'package:idea2art/src/utils.dart';

class ServerPanel extends HookConsumerWidget {
  Widget build(BuildContext context, WidgetRef ref) {
    final server = ref.watch(generateServerProvider);
    final service = ref.watch(generateServiceProvider);

    final isLoading = service.isLoading;
    final enableSave =
        service.hasValue && !service.isLoading && !service.hasError;
    final keyError = !service.isLoading &&
        service.hasError &&
        service.error is GenerateServiceAuthorizationException;
    final hostPortError = !service.isLoading &&
        service.hasError &&
        service.error is GenerateServiceHostPortBadException;

    final _serverController =
        useTextEditingController(text: server.value?.host ?? "localhost");
    final _portController = useTextEditingController(
        text: server.value?.port.toString() ?? "50051");
    final _keyController =
        useTextEditingController(text: server.value?.key ?? "");

    final _serverFocusNode = useFocusCallback(_serverController, (val) {
      ref.read(generateServerProvider.notifier).setHost(val);
    });

    final _portFocusNode = useFocusCallback(_portController, (val) {
      ref.read(generateServerProvider.notifier).setPort(int.parse(val));
    });

    final _keyFocusNode = useFocusCallback(_keyController, (val) {
      ref.read(generateServerProvider.notifier).setKey(val);
    });

    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Text("Please enter server details",
              style: Theme.of(context).textTheme.headline6),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            color: hostPortError ? Color(0x10FF0000) : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Server:"),
                TextField(
                    autofocus: true,
                    controller: _serverController,
                    focusNode: _serverFocusNode,
                    onSubmitted: (val) =>
                        ref.read(generateServerProvider.notifier).setHost(val)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            color: hostPortError ? Color(0x10FF0000) : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Port:"),
                TextField(
                  controller: _portController,
                  focusNode: _portFocusNode,
                  onSubmitted: (val) => ref
                      .read(generateServerProvider.notifier)
                      .setPort(int.parse(val)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            color: keyError ? Color(0x10FF0000) : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Key:"),
                TextField(
                    controller: _keyController,
                    focusNode: _keyFocusNode,
                    onSubmitted: (val) =>
                        ref.read(generateServerProvider.notifier).setKey(val)),
              ],
            ),
          ),
          ElevatedButton(
            style: style,
            onPressed:
                enableSave ? () => Navigator.pushNamed(context, "/") : null,
            child: isLoading
                ? CircularProgressIndicator(value: null)
                : Text('Save'),
          ),
        ],
      ),
    );
  }
}
