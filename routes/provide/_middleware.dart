import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(greetingProvider());
}

Middleware greetingProvider() {
  return provider<String>((context) => 'Hello World from greeting provider');
}
