import 'package:hooks_riverpod/hooks_riverpod.dart';

class GenerateServer {
  const GenerateServer({this.host = "", this.port = -1, this.key = ""});

  final String host;
  final int port;
  final String key;

  GenerateServer copyWith({
    String? host,
    int? port,
    String? key,
  }) {
    return GenerateServer(
      host: host ?? this.host,
      port: port ?? this.port,
      key: key ?? this.key,
    );
  }

  GenerateServer.fromJson(Map<String, dynamic> json)
      : host = json['host'],
        port = json['port'],
        key = json['key'];

  Map<String, dynamic> toJson() => {
        'host': host,
        'port': port,
        'key': key,
      };
}

class GenerateServerNotifier extends StateNotifier<GenerateServer> {
  GenerateServerNotifier([GenerateServer? server])
      : super(server ?? const GenerateServer());

  void setHost(String host) {
    state = state.copyWith(host: host);
  }

  void setPort(int port) {
    state = state.copyWith(port: port);
  }

  void setKey(String key) {
    state = state.copyWith(key: key);
  }
}

/*
final generateServerProvider =
    StateNotifierProvider<GenerateServerNotifier, GenerateServer>(
  (ref) => GenerateServerNotifier(),
);
*/
