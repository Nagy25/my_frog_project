import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  // get data from _middleware
  final greeting = context.read<String>();
  return Response(body: greeting);
}
