import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  // logger for all routs
  //return handler.use(requestLogger());
  return (context) async {
    // Execute code before request is handled.

    final request = context.request;
    final params = request.uri.queryParameters;
    final name = params['name'] ?? '';

    // Forward the request to the respective handler.
    final response = await handler(context);

    // Execute code after request is handled.

    // Return a response.
    //return name.isNotEmpty ? response : Response(statusCode: 401);
    return response;
  };
}
