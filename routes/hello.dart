import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:my_frog_project/models/user.dart';

Future<Response> onRequest(RequestContext context) async {
  // Access the incoming request.
  final request = context.request;
  // Access the HTTP method.
  final method = request.method.value;

  final headers = request.headers;

  final params = request.uri.queryParameters;
  final name = params['name'] ?? 'no name ';

  // Access the request body as a `String`.
  final body = await request.body();
  final data = json.decode(body) as Map<String, dynamic>;
  final theName = data['name'];

  /* return Response(
      body: 'Welcome to hello2  page! method is $method \n and the headers is '
          '$headers \n \n and queryParameters name  is $name \n \n '
          'and body is $theName',
      statusCode: 402,
      headers: {'hello': 'hello'});*/
  return Response.json(body: User(name: 'ahmednagy'));
}
