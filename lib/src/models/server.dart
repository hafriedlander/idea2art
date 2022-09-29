class GenerateServer {
  final String host;
  final int port;
  final String key;

  const GenerateServer({this.host = "", this.port = -1, this.key = ""});

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
