import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

import 'data/user_store.dart';
import 'di/component/service_locator.dart';
import 'router/app_router.dart';


final sl = GetIt.instance;

void setupDependencies() {
  sl.registerSingleton<SGGoRouter>(SGGoRouter());
  sl.registerSingleton<GetStoreHelper>(GetStoreHelper(GetStorage("myStorage")));
}

void main() async {

  setupDependencies();
  await GetStorage.init();
  await getIt.allReady();

  runApp(
      ProviderScope(
        child: const MyApp(),
      )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: getIt<SGGoRouter>().getGoRouter,
        title: "Synapsis",
    );
  }
}
