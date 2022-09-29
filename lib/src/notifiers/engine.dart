import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:idea2art/src/models/engine.dart';

class EnginesNotifier extends StateNotifier<Engines> {
  EnginesNotifier() : super(Engines());

  void add(Engine engine) {
    state = state.copyWith(engines: [...state.engines, engine]);
  }

  void clear() {
    state = state.copyWith(engines: []);
  }
}
