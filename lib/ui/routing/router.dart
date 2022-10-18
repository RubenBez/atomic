import 'app_route.dart';
import 'home_route.dart';

class Routes {
  static final root = AppRoute('/');

  static final home = HomeRoute(root);
  
  static final login = AppRoute('/login', root);
  static final profile = AppRoute('/profile', root);
}
