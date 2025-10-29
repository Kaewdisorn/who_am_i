import 'dart:io';

import 'package:backend/api_router.dart';
import 'package:shelf/shelf_io.dart';

void main(List<String> arguments) async {
  final handler = ApiRouter(flutterWebBuildPath: 'web').router;

  final port = int.parse(Platform.environment['PORT'] ?? '8080');

  final server = await serve(handler, InternetAddress.anyIPv4, port);

  print('Server listening at http://${server.address.host}:${server.port}');
}
