
import 'app_route.dart';

class HomeRoute extends AppRoute {
  late final AppRoute dashboard;

  HomeRoute(AppRoute parent) : super("/home", parent) {
    dashboard = AppRoute("/dashboard", this);
  }
}