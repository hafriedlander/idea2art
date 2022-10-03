import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/models/server.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GenerateServerPendingNotifier
    extends StateNotifier<AsyncValue<GenerateServer>> {
  GenerateServerPendingNotifier([AsyncValue<GenerateServer>? val])
      : super(val ?? const AsyncValue.loading());

  void setHost(String host) {}
  void setPort(int port) {}
  void setKey(String key) {}
}

class GenerateServerNotifier extends GenerateServerPendingNotifier {
  GenerateServerNotifier(this.pref, this.localServer)
      : super(const AsyncValue.loading()) {
    final serverJson = pref.getString("serverCurrent");

    if (serverJson != null) {
      state = AsyncValue.data(GenerateServer.fromJson(jsonDecode(serverJson)));
    } else if (localServer.isNotEmpty) {
      state = AsyncValue.data(GenerateServer.fromJson(jsonDecode(localServer)));
    } else {
      state = const AsyncValue.data(GenerateServer());
    }
  }

  final SharedPreferences pref;
  final String localServer;

  void updatePrefs() {
    pref.setString("serverCurrent", jsonEncode(state.value));
  }

  void setHost(String host) {
    final server = state.value;
    if (server != null) {
      state = AsyncValue.data(server.copyWith(host: host));
      updatePrefs();
    }
  }

  void setPort(int port) {
    final server = state.value;
    if (server != null) {
      state = AsyncValue.data(server.copyWith(port: port));
      updatePrefs();
    }
  }

  void setKey(String key) {
    final server = state.value;
    if (server != null) {
      state = AsyncValue.data(server.copyWith(key: key));
      updatePrefs();
    }
  }
}
