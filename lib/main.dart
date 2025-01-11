import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fullscreen/flutter_fullscreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mining_monitoring/di/module/network_module.dart';

import 'data/store/user_store.dart';
import 'di/component/service_locator.dart';
import 'router/app_router.dart';


final sl = GetIt.instance;
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void setupDependencies() {
  sl.registerSingleton<SGGoRouter>(SGGoRouter());
  sl.registerSingleton<GetUserStoreHelper>(GetUserStoreHelper(GetStorage("myStorage")));
}

void main() async {

  setupDependencies();
  await GetStorage.init();
  await getIt.allReady();

  await FullScreen.ensureInitialized();
  FullScreen.setFullScreen(true);

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
    // Alice alice = Alice(configuration: AliceConfiguration(
    //   showNotification: true,
    //   showInspectorOnShake: true,
    //   navigatorKey: navigatorKey,
    //   showShareButton: true
    // ));
    // AliceDioAdapter aliceDioAdapter = AliceDioAdapter();
    // alice.addAdapter(aliceDioAdapter);
    //
    // final dioProv = ref.read(dioProvider);
    // dioProv.interceptors.add(aliceDioAdapter);

    return MaterialApp.router(
      routerConfig: getIt<SGGoRouter>().getGoRouter,
        title: "Synapsis",
    );
  }
}
