import 'package:atomic/domain/providers/connection_state_provider.dart';
import 'package:atomic/ui/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectionState = ref.watch(connectionStreamStateProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            connectionState.when(
              data: (data) => Text(data.name),
              error: (error, stackTrace) =>
                  const Text('Oops! Something  went wrong!'),
              loading: () => const CircularProgressIndicator(),
            ),
            ElevatedButton(
              child: const Text('Profile'),
              onPressed: () {
                context.push(Routes.profile());
              },
            ),
          ],
        ),
      ),
    );
  }
}
