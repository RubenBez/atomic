import 'package:atomic/domain/providers/auth_state_notifier.dart';
import 'package:atomic/domain/service/app_config/app_config_service_impl.dart';
import 'package:atomic/ui/routing/router.dart';
import 'package:atomic/ui/theme/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfigServiceImpl.instance.initialize();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = GoRouter(
      refreshListenable: ref.watch(authStateNotifier),
      initialLocation: '/',
      redirect: (context, state) async {
        final isAuthenticated =
            ref.watch(authStateNotifier.notifier).isAuthenticated;
        final goingToAuth = (state.location == Routes.login());

        if (!isAuthenticated && !goingToAuth) return Routes.login();

        if (isAuthenticated && goingToAuth) return Routes.home.dashboard();

        return null;
      },
      routes: AppRouter.instance.buildRoutes(ref),
    );
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: AtomicTheme.standard,
      title: "Atomic",
    );
  }
}
