import 'package:atomic/domain/providers/auth_state_notifier.dart';
import 'package:atomic/ui/features/home/home_page.dart';
import 'package:atomic/ui/features/onboarding/login/login_page.dart';
import 'package:atomic/ui/features/profile/profile_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_route.dart';
import 'home_route.dart';

class Routes {
  static final root = AppRoute("/");

  static final login = AppRoute("/login", root);
  static final home = HomeRoute(root);
  static final profile = AppRoute("/profile", root);
}

class AppRouter {
  const AppRouter._();

  static const AppRouter instance = AppRouter._();

  List<GoRoute> buildRoutes(WidgetRef ref) => [
        GoRoute(
            path: Routes.root(),
            redirect: (context, state) async {
              final isAuthenticated =
                  ref.watch(authStateNotifier.notifier).isAuthenticated;
              if (isAuthenticated) {
                if (state.location == Routes.root()) {
                  return Routes.home.dashboard();
                } else {
                  return null;
                }
              }
              return Routes.login();
            }),
        GoRoute(
          path: Routes.login(),
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: Routes.profile(),
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(
          path: Routes.home(["pid"]),
          builder: (context, state) {
            // final pageId = state.params['pid'] ?? 'home';
            return HomePage(key: state.pageKey);
          },
        )
      ];
}
