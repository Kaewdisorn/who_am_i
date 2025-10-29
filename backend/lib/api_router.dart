import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_static/shelf_static.dart';

class ApiRouter {
  final String flutterWebBuildPath;

  ApiRouter({required this.flutterWebBuildPath});

  Handler get router {
    final router = Router();
    // final prefix = '/api';

    // router.mount(prefix, usersRouter.router);
    // router.mount(prefix, profilesRouter.router);
    // router.mount(prefix, articlesRouter.router);

    router.get('/api/hello', (Request request) {
      return Response.ok('Hello from API!');
    });

    // Serve Flutter Web static files
    final staticHandler = createStaticHandler(
      flutterWebBuildPath,
      defaultDocument: 'index.html', // ensures SPA routing works
    );

    // Mount static handler on root
    router.all('/<ignored|.*>', (Request request) {
      return staticHandler(request);
    });

    return Pipeline().addMiddleware(logRequests()).addHandler(router.call);
  }
}
