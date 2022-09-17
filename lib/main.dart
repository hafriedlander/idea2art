import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:idea2art/models/generate.dart';
import 'package:idea2art/models/server.dart';
import 'package:idea2art/services/generate.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final sharedPreferencesInstance =
    FutureProvider<SharedPreferences>((ref) async {
  await Future.delayed(Duration(seconds: 1));
  return await SharedPreferences.getInstance();
});

class GenerateServerPendingNotifier
    extends StateNotifier<AsyncValue<GenerateServer>> {
  GenerateServerPendingNotifier([AsyncValue<GenerateServer>? val])
      : super(val ?? const AsyncValue.loading());

  void setHost(String host) {}
  void setPort(int port) {}
  void setKey(String key) {}
}

class GenerateServerNotifier extends GenerateServerPendingNotifier {
  GenerateServerNotifier(this.pref) : super(const AsyncValue.loading()) {
    final serverJson = this.pref.getString("serverCurrent");

    if (serverJson == null) {
      state = const AsyncValue.data(GenerateServer());
    } else {
      state = AsyncValue.data(GenerateServer.fromJson(jsonDecode(serverJson)));
    }
  }

  final SharedPreferences pref;

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

final generateServerProvider = StateNotifierProvider<
    GenerateServerPendingNotifier, AsyncValue<GenerateServer>>(
  (ref) {
    final prefs = ref.watch(sharedPreferencesInstance);
    final value = prefs.value;
    return (value == null)
        ? GenerateServerPendingNotifier()
        : GenerateServerNotifier(value);
  },
);

final generateServiceProvider = FutureProvider<GenerateService>((ref) async {
  final server = ref.watch(generateServerProvider).value;

  if (server != null) {
    final service = GenerateService(server);
    final alive = await service.test();
    if (alive) {
      return service;
    }
  }

  throw Exception();
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(generateServiceProvider, (_, server) {
      if (server.hasValue) Navigator.pushNamed(context, "/");
    });

    return MaterialApp(
      title: 'idea2.art',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      initialRoute: "/server",
      routes: {
        "/": (BuildContext context) => Scaffold(
              appBar: AppBar(
                title: const Text('idea2.art'),
              ),
              body: Center(
                child: GeneratePage(),
              ),
            ),
        "/server": (BuildContext context) => Scaffold(
              appBar: AppBar(
                title: const Text('idea2.art'),
              ),
              body: Center(
                child: ServerPage(),
              ),
            )
      },
    );
  }
}

class ServerPage extends ConsumerWidget {
  Widget build(BuildContext context, WidgetRef ref) {
    final server = ref.watch(generateServerProvider);

    if (server.isLoading)
      return Center(child: Text("Please wait..."));
    else
      return ServerPageMain();
  }
}

class ServerPageMain extends HookConsumerWidget {
  Widget build(BuildContext context, WidgetRef ref) {
    final server = ref.watch(generateServerProvider);
    final service = ref.watch(generateServiceProvider);

    final _serverController =
        useTextEditingController(text: server.value?.host ?? "localhost");
    final _portController = useTextEditingController(
        text: server.value?.port?.toString() ?? "50051");
    final _keyController =
        useTextEditingController(text: server.value?.key ?? "");

    return Column(children: [
      Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text("Server:"),
            TextField(
                controller: _serverController,
                onSubmitted: (val) =>
                    ref.read(generateServerProvider.notifier).setHost(val)),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text("Port:"),
            TextField(
              controller: _portController,
              onSubmitted: (val) => ref
                  .read(generateServerProvider.notifier)
                  .setPort(int.parse(val)),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text("Key:"),
            TextField(
                controller: _keyController,
                onSubmitted: (val) =>
                    ref.read(generateServerProvider.notifier).setKey(val)),
          ],
        ),
      ),
      TextButton(
        onPressed: (service.valueOrNull == null)
            ? null
            : () => Navigator.pushNamed(context, "/"),
        child: const Text('Save'),
      ),
    ]);
  }
}

class GeneratePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GenerateMenu(),
          Expanded(
            child: Row(
              children: [
                Expanded(child: GeneratePrimaryPanel()),
                GenerateSettingsPanel(),
              ],
            ),
          ),
        ],
      );
}

class GenerateMenu extends StatelessWidget {
  const GenerateMenu({key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      width: 100,
      child: ListView(
        children: const [
          Text("Generate"),
          Text("History"),
          Text("Settings"),
        ],
      ));
}

class ResultImages extends StateNotifier<List<ImageProvider>> {
  ResultImages([List<ImageProvider>? initialImages])
      : super(initialImages ?? []);

  void add(ImageProvider image) {
    state = [...state, image];
  }

  void clear() {
    state = [];
  }
}

final resultImagesProvider =
    StateNotifierProvider<ResultImages, List<ImageProvider>>(
  (ref) => ResultImages(),
);

class GenerateImages extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = ref.watch(resultImagesProvider);

    return Wrap(children: images.map((image) => Image(image: image)).toList());
  }
}

class GenerateImagePlaceholder extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratio = ref.watch(generateSettingsProvider.select(
      (settings) => settings.width.toDouble() / settings.height.toDouble(),
    ));

    return Container(
      padding: EdgeInsets.all(20),
      child: AspectRatio(
        aspectRatio: ratio,
        child: Container(
          color: const Color(0xFF808080),
          width: 400,
          height: 400 / ratio,
        ),
      ),
    );
  }
}

class GenerateImagesPlaceholder extends ConsumerWidget {
  GenerateImagesPlaceholder({key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberOfImages = ref.watch(
        generateSettingsProvider.select((settings) => settings.numberOfImages));

    return Wrap(
        children:
            List.generate(numberOfImages, (i) => GenerateImagePlaceholder()));
  }
}

class GeneratePrimaryPanel extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasResult =
        ref.watch(resultImagesProvider.select((images) => images.isNotEmpty));

    return Column(children: [
      Expanded(
        child: Center(
            child: hasResult ? GenerateImages() : GenerateImagesPlaceholder()),
      ),
      Container(
        width: 400,
        child: Row(children: [
          Expanded(child: GeneratePromptField()),
          GenerateButton(),
        ]),
      ),
    ]);
  }
}

final generatePromptProvider =
    StateNotifierProvider<GeneratePromptNotifier, GeneratePrompt>(
  (ref) => GeneratePromptNotifier(),
);

final generateSettingsProvider =
    StateNotifierProvider<GenerateSettingsNotifier, GenerateSettings>(
        (ref) => GenerateSettingsNotifier());

class GeneratePromptField extends HookConsumerWidget {
  const GeneratePromptField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useTextEditingController(text: "An image");

    final prompt = ref.watch(generatePromptProvider);

    return TextField(
      controller: _controller,
      onSubmitted: (String value) {
        ref.read(generatePromptProvider.notifier).setPrompt(value);
      },
    );
  }
}

class GenerateButton extends ConsumerWidget {
  const GenerateButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prompt = ref.watch(generatePromptProvider);
    final settings = ref.watch(generateSettingsProvider);
    final service = ref.watch(generateServiceProvider);

    final enabled = service.hasValue && prompt.prompt.isNotEmpty;

    return TextButton(
      onPressed: enabled
          ? (() async {
              debugPrint('Generating ${prompt}');
              final s = service.value;
              if (s != null) {
                await for (final image in s.generate(prompt, settings)) {
                  ref.read(resultImagesProvider.notifier).add(image);
                }
              }
            })
          : null,
      child: Text("Generate"),
    );
  }
}

class GenerateSettingsPanel extends StatelessWidget {
  const GenerateSettingsPanel({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            width: 400,
            child: GenerateSettingsSliders(),
          ),
        ],
      );
}

class GenerateSlider extends ConsumerWidget {
  final String label;
  final String description;
  final double min;
  final double max;
  final int divisions;
  final double Function(GenerateSettings) selector;
  final void Function(GenerateSettingsNotifier, double) changeHandler;

  const GenerateSlider(
      {required this.label,
      required this.description,
      required this.min,
      required this.max,
      required this.divisions,
      required this.selector,
      required this.changeHandler});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(generateSettingsProvider.select(selector));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
                child:
                    Text(label, style: Theme.of(context).textTheme.headline6)),
            Text(value.toString())
          ],
        ),
        Text(description),
        Slider(
          value: value,
          min: min,
          max: max,
          divisions: divisions,
          label: value.toString(),
          onChanged: (double value) {
            changeHandler(ref.read(generateSettingsProvider.notifier), value);
          },
        ),
      ],
    );
  }
}

class GenerateSettingsSliders extends ConsumerWidget {
  const GenerateSettingsSliders({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GenerateSlider(
            label: "Width",
            description: "The width of the generated image",
            min: 512,
            max: 1024,
            divisions: (512 / 64).ceil(),
            selector: (settings) => settings.width.toDouble(),
            changeHandler: (notifier, value) =>
                notifier.setWidth(value.toInt()),
          ),
          GenerateSlider(
            label: "Height",
            description: "The height of the generated image",
            min: 512,
            max: 1024,
            divisions: (512 / 64).ceil(),
            selector: (settings) => settings.height.toDouble(),
            changeHandler: (notifier, value) =>
                notifier.setHeight(value.toInt()),
          ),
          GenerateSlider(
            label: "CFG Scale",
            description:
                "CFG Scale adjusts how much the image will be like your prompt. Higher values keep your image closer to your prompt.",
            min: 0,
            max: 20,
            divisions: ((20 - 0) / 0.5).ceil(),
            selector: (GenerateSettings settings) => settings.cfgScale,
            changeHandler: (notifier, value) => notifier.setCfgScale(value),
          ),
          GenerateSlider(
            label: "Steps",
            description:
                "How many steps to spend generating your image. More steps typically means less noise, but too many can start introducing oddities.",
            min: 5,
            max: 150,
            divisions: ((150 - 5) / 1).ceil(),
            selector: (GenerateSettings settings) => settings.steps.toDouble(),
            changeHandler: (notifier, value) =>
                notifier.setSteps(value.toInt()),
          ),
          GenerateSlider(
            label: "Number of Images",
            description:
                "Generate multiple images from a single prompt. If you provide a seed, it will be used for the first image, and incremented by 1 for each image after that.",
            min: 1,
            max: 16,
            divisions: ((16 - 1) / 1).ceil(),
            selector: (GenerateSettings settings) =>
                settings.numberOfImages.toDouble(),
            changeHandler: (notifier, value) =>
                notifier.setNumberOfImages(value.toInt()),
          ),
        ],
      ),
    );
  }
}
