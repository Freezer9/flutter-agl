import 'export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Start asynchronously connecting to API provider backends
  final container = ProviderContainer();
  container.read(storageClientProvider).connect();
  container.read(valClientProvider).connect();
  container.read(radioClientProvider).connect();
  container.read(mpdClientProvider).connect();

  // Pass the container to ProviderScope and then run the app.
  runApp(ProviderScope(parent: container, child: const App()));
}
