import 'package:atomic/domain/providers/auth_state_notifier.dart';
import 'package:atomic/ui/features/home/page/home_page.dart';
import 'package:atomic/ui/features/onboarding/login/view/login_page.dart';
import 'package:atomic/ui/features/profile/view/profile_page.dart';
import 'package:atomic/ui/routing/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
          name: Routes.login(),
          path: Routes.login(),
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          name: Routes.profile(),
          path: Routes.profile(),
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(
          name: Routes.home(),
          path: Routes.home(['pid']),
          builder: (context, state) {
            // final pageId = state.params['pid'] ?? 'home';
            return HomePage(key: state.pageKey);
          },
        )
      ];
}
