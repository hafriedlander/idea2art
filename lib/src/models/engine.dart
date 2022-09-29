class Engine {
  Engine({
    required this.id,
    required this.owner,
    required this.name,
    this.description = "No description provided",
  });

  final String id;
  final String owner;
  final String name;
  final String description;

  Engine copyWith({
    String? id,
    String? owner,
    String? name,
    String? description,
  }) {
    return Engine(
      id: id ?? this.id,
      owner: owner ?? this.owner,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}

class Engines {
  final Iterable<Engine> engines;

  Engines({this.engines = const []});

  Engines copyWith({
    Iterable<Engine>? engines,
  }) {
    return Engines(
      engines: engines ?? this.engines,
    );
  }
}
