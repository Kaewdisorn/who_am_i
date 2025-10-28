import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ApiRouter {
  Handler get router {
    final router = Router();
    // final prefix = '/api';

    // router.mount(prefix, usersRouter.router);
    // router.mount(prefix, profilesRouter.router);
    // router.mount(prefix, articlesRouter.router);
    router.get('/', (Request request) {
      return Response.ok('Hello, World!');
    });

    return Pipeline().addHandler(router.call);
  }
}
