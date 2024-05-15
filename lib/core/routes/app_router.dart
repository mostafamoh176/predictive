import 'package:auto_route/auto_route.dart';
import '../resources/constants/routes.dart';
import 'app_router.gr.dart';

final appRouter = AppRouter();

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: TableRoute.page,
      path: Routes.tableView,
      initial: true,
    ),
      ];
}

